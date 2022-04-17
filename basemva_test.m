clc
clear 
close all
% bus idx
[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
% branch idx
[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
% gen idx
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
% cost idx
[PW_LINEAR, POLYNOMIAL, MODEL, STARTUP, SHUTDOWN, NCOST, COST] = idx_cost;%% build opf problem
%% load the original matpower casefile
mpc     = loadcase('BaWue_Transnet');
mpc     = runpf(mpc); 

%% change the base MVA for the mpc file
mpc_mod = tun_baseMVA(mpc, 100);
mpc_mod = runpf(mpc_mod);

%% compare the result
% angle
dtheta  = norm(mpc.bus(:,VA)- mpc_mod.bus(:,VA),2);
dv      = norm(mpc.bus(:,VM)- mpc_mod.bus(:,VM),2);
dPf     = norm(mpc.branch(:,PF)- mpc_mod.branch(:,PF),2);
dQf     = norm(mpc.branch(:,QF)- mpc_mod.branch(:,QF),2);
table(dtheta,dv,dPf,dQf)
