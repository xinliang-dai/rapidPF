import sys
sys.path.append("/home/cyc/Downloads/KaHIP-master/deploy")
import kahip
import csv
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


# load case using pypower
# ppc = pp.case14()

# set number of areas to split and case name
# n_split = 3
# case = 'case57'
# case = 'case118'
# case = 'case300'
# case = 'case_ACTIVSg500'
# case = 'case1354pegase'
# case = 'case2383wp'
# case = 'case3375wp'
case = 'case13659pegase'

# or read from .mat file
mpc = 'matcase/' + case + '.mat'
mpc = sio.loadmat(mpc)
ppc = mpc_to_ppc(mpc)

# for i in range(2, 10):
for i in range(10, 102, 10):
    n_split = i

    # partition
    edge_cut, areas = partition(ppc, n_split)
    # partition_result = {"edge_cut": edge_cut, "area": areas}

    # insert number of areas and edge cuts to the result
    result = areas
    result = np.insert(result, 0, edge_cut)
    result = np.insert(result, 0, n_split)

    # save the result
    # sio.savemat("ppc_partition.mat", partition_result)

    # write the result to .csv file
    with open("results/" + case + "_" + str(n_split) + ".csv", "w") as csvfile:
        writer = csv.writer(csvfile)

        # write
        writer.writerow(result)
