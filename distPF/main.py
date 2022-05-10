import sys
sys.path.append("/home/xinliang/Research/KaHIP-master/deploy")
import kahip
import pypower.api as pp
import numpy as np
import scipy.io as sio

from scipy.sparse import csr_matrix
from pypower.idx_brch import F_BUS, T_BUS
from pypower.idx_bus import BUS_AREA
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
    from_arr = branch[:, F_BUS].astype(int)
    to_arr = branch[:, T_BUS].astype(int)

    data = np.ones((n_edge,))

    # create connection matrix
    conn_mat = csr_matrix((data, (from_arr, to_arr)), shape=(n_edge, n_edge))

    # bi directed
    conn_mat = conn_mat + conn_mat.T

    # get adjacency array
    adjncy = conn_mat.indices.tolist()

    # get xadj array
    total_arr = np.hstack((from_arr, to_arr))
    mem = np.bincount(total_arr)
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
    print(blocks)

    # add info to bus matrix
    ppc_case["bus"][:, BUS_AREA] = blocks
    ppc_case["edgecut"] = edgecut
    ppc_case["regions"] = n_blocks
    return ppc_case


# load case
# ppc_case = pp.case14()
# ppc = pp.ext2int(ppc)

# or read from .mat file
mpc = 'mpc.mat'
mpc = sio.loadmat(mpc)
ppc_case = mpc_to_ppc(mpc)

# partition
ppc_case = partition(ppc_case, 3)

# print result
# print(ppc_case["bus"][:, BUS_AREA])
# print(ppc_case)

# save the result
sio.savemat("ppc_partition.mat", ppc_case)
