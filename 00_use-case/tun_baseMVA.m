function mpc_out = tun_baseMVA(mpc, new_baseMVA)
%% change the base MVA of the matpower casefile
%   mpc         - matpower casefile
%   new_baseMVA - target base MVA for mpc
%   branch idx
    [F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
    baseMVA = mpc.baseMVA;
    % ratio of new and old baseMVA
    ratio   = new_baseMVA/baseMVA;
    mpc_out = mpc;
    mpc_out.baseMVA  = new_baseMVA;
    % tuning the pu system for branch data
    mpc_out.branch(:,[BR_R,BR_X]) = mpc.branch(:,[BR_R,BR_X])*ratio;
    mpc_out.branch(:,BR_B)        = mpc.branch(:,BR_B)/ratio;
end