import sys
sys.path.append("/home/xinliang/Research/KaHIP-master/deploy")
import kahip
import pypower.api as pp
import numpy as np
import scipy.io as sio

from pypower.idx_brch import F_BUS, T_BUS
from mpc_to_ppc import mpc_to_ppc


def partition(ppc_case, n_blocks):
    # this function makes a partition of the ppc case
    # n_blocks: num of parts

    # get bus and branch matrix
    ppc = pp.ext2int(ppc_case)
    bus, branch = ppc["bus"], ppc["branch"]

    # get relevant variables
    n_bus = bus.shape[0]
    n_edge = branch.shape[0]
    n_conn = n_edge * 2

    # get form bus and to bus array
    from_bus = branch[:, F_BUS].astype(int)
    to_bus = branch[:, T_BUS].astype(int)

    # bi-directed
    from_arr = np.hstack((from_bus, to_bus))
    to_arr = np.hstack((to_bus, from_bus))

    # reorder according to from bus and then to bus
    id_arr = np.lexsort((to_arr, from_arr))
    from_arr = from_arr[id_arr]
    to_arr = to_arr[id_arr]

    # get adjacency array
    adjncy = to_arr.tolist()

    # get xadj array
    mem = np.bincount(from_arr)
    xadj = np.cumsum(mem)
    xadj = np.insert(xadj, [0], [0]).tolist()

    # set weights of paths and vertices 1
    vwgt = np.ones((n_bus,)).astype(int).tolist()
    adjcwgt = np.ones((n_conn,)).astype(int).tolist()

    # set parameters of the algorithm
    supress_output = 0
    imbalance = 0.01
    # nblocks = 4
    seed = 0

    # set mode
    # const int FAST           = 0;
    # const int ECO            = 1;
    # const int STRONG         = 2;
    # const int FASTSOCIAL     = 3;
    # const int ECOSOCIAL      = 4;
    # const int STRONGSOCIAL   = 5;
    mode = 2

    # run partition algorithm
    edgecut, blocks = kahip.kaffpa(vwgt, xadj, adjcwgt,
                                   adjncy, n_blocks, imbalance,
                                   supress_output, seed, mode)

    print(edgecut)
    blocks = np.array(blocks) + 1
    print(blocks)

    # add info to bus matrix
    # ppc_case["bus"][:, BUS_AREA] = blocks
    # ppc_case["edgecut"] = edgecut
    # ppc_case["regions"] = n_blocks
    return edgecut, blocks


# load case
# ppc_case = pp.case14()
# ppc = pp.ext2int(ppc)

# or read from .mat file
mpc = 'mpc.mat'
mpc = sio.loadmat(mpc)
ppc = mpc_to_ppc(mpc)

# ppc = pp.case14()
# partition
edge_cut, areas = partition(ppc, 3)
partition_result = {"edge_cut": edge_cut, "area": areas}

# print result
# print(ppc_case["bus"][:, BUS_AREA])
# print(ppc_case)

# save the result
sio.savemat("ppc_partition.mat", partition_result)
