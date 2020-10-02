function mpc = mpc_merge_split
%MPC_MERGE_SPLIT

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1.06	0	0	1	1.06	0.94;
	2	2	21.7	12.7	0	0	1	1.045	-4.98	0	1	1.06	0.94;
	3	2	94.2	19	0	0	1	1.01	-12.72	0	1	1.06	0.94;
	4	1	47.8	-3.9	0	0	1	1.019	-10.33	0	1	1.06	0.94;
	5	1	7.6	1.6	0	0	1	1.02	-8.78	0	1	1.06	0.94;
	6	2	11.2	7.5	0	0	1	1.07	-14.22	0	1	1.06	0.94;
	7	1	0	0	0	0	1	1.062	-13.37	0	1	1.06	0.94;
	8	2	0	0	0	0	1	1.09	-13.36	0	1	1.06	0.94;
	9	1	29.5	16.6	0	19	1	1.056	-14.94	0	1	1.06	0.94;
	10	1	9	5.8	0	0	1	1.051	-15.1	0	1	1.06	0.94;
	11	1	3.5	1.8	0	0	1	1.057	-14.79	0	1	1.06	0.94;
	12	1	6.1	1.6	0	0	1	1.055	-15.07	0	1	1.06	0.94;
	13	1	13.5	5.8	0	0	1	1.05	-15.16	0	1	1.06	0.94;
	14	1	14.9	5	0	0	1	1.036	-16.04	0	1	1.06	0.94;
	15	1	0	0	0	0	1	1	0	135	1	1.05	0.95;
	16	2	21.7	12.7	0	0	1	1	0	135	1	1.1	0.95;
	17	1	2.4	1.2	0	0	1	1	0	135	1	1.05	0.95;
	18	1	7.6	1.6	0	0	1	1	0	135	1	1.05	0.95;
	19	1	0	0	0	0.19	1	1	0	135	1	1.05	0.95;
	20	1	0	0	0	0	1	1	0	135	1	1.05	0.95;
	21	1	22.8	10.9	0	0	1	1	0	135	1	1.05	0.95;
	22	1	30	30	0	0	1	1	0	135	1	1.05	0.95;
	23	1	0	0	0	0	1	1	0	135	1	1.05	0.95;
	24	1	5.8	2	0	0	3	1	0	135	1	1.05	0.95;
	25	1	0	0	0	0	1	1	0	135	1	1.05	0.95;
	26	1	11.2	7.5	0	0	2	1	0	135	1	1.05	0.95;
	27	2	0	0	0	0	2	1	0	135	1	1.1	0.95;
	28	1	6.2	1.6	0	0	2	1	0	135	1	1.05	0.95;
	29	1	8.2	2.5	0	0	2	1	0	135	1	1.05	0.95;
	30	1	3.5	1.8	0	0	2	1	0	135	1	1.05	0.95;
	31	1	9	5.8	0	0	2	1	0	135	1	1.05	0.95;
	32	1	3.2	0.9	0	0	2	1	0	135	1	1.05	0.95;
	33	1	9.5	3.4	0	0	2	1	0	135	1	1.05	0.95;
	34	1	2.2	0.7	0	0	2	1	0	135	1	1.05	0.95;
	35	1	17.5	11.2	0	0	3	1	0	135	1	1.05	0.95;
	36	2	0	0	0	0	3	1	0	135	1	1.1	0.95;
	37	2	3.2	1.6	0	0	2	1	0	135	1	1.1	0.95;
	38	1	8.7	6.7	0	0.04	3	1	0	135	1	1.05	0.95;
	39	1	0	0	0	0	3	1	0	135	1	1.05	0.95;
	40	1	3.5	2.3	0	0	3	1	0	135	1	1.05	0.95;
	41	2	0	0	0	0	3	1	0	135	1	1.1	0.95;
	42	1	0	0	0	0	1	1	0	135	1	1.05	0.95;
	43	1	2.4	0.9	0	0	3	1	0	135	1	1.05	0.95;
	44	1	10.6	1.9	0	0	3	1	0	135	1	1.05	0.95;
	45	1	0	0	0	0	1	1.04	0	345	1	1.1	0.9;
	46	2	0	0	0	0	1	1	0	345	1	1.1	0.9;
	47	1	0	0	0	0	1	1.025	0	345	1	1.1	0.9;
	48	1	0	0	0	0	1	1	0	345	1	1.1	0.9;
	49	1	90	30	0	0	1	1	0	345	1	1.1	0.9;
	50	1	0	0	0	0	1	1	0	345	1	1.1	0.9;
	51	1	100	35	0	0	1	1	0	345	1	1.1	0.9;
	52	1	0	0	0	0	1	1	0	345	1	1.1	0.9;
	53	1	125	50	0	0	1	1	0	345	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	232.4	-16.9	10	0	1.06	100	1	332.4	0	0	0	0	0	0	0	0	0	0	0	0;
	2	40	42.4	50	-40	1.045	100	1	140	0	0	0	0	0	0	0	0	0	0	0	0;
	3	0	23.4	40	0	1.01	100	1	100	0	0	0	0	0	0	0	0	0	0	0	0;
	6	0	12.2	24	-6	1.07	100	1	100	0	0	0	0	0	0	0	0	0	0	0	0;
	8	0	17.4	24	-6	1.09	100	1	100	0	0	0	0	0	0	0	0	0	0	0	0;
	16	60.97	0	60	-20	1	100	1	80	0	0	0	0	0	0	0	0	0	0	0	0;
	36	21.59	0	62.5	-15	1	100	1	50	0	0	0	0	0	0	0	0	0	0	0	0;
	41	26.91	0	48.7	-15	1	100	1	55	0	0	0	0	0	0	0	0	0	0	0	0;
	37	19.2	0	40	-10	1	100	1	30	0	0	0	0	0	0	0	0	0	0	0	0;
	27	37	0	44.7	-15	1	100	1	40	0	0	0	0	0	0	0	0	0	0	0	0;
	46	163	6.54	300	-300	1.025	100	1	300	10	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.01938	0.05917	0.0528	0	0	0	0	0	1	-360	360;
	1	5	0.05403	0.22304	0.0492	0	0	0	0	0	1	-360	360;
	2	3	0.04699	0.19797	0.0438	0	0	0	0	0	1	-360	360;
	2	4	0.05811	0.17632	0.034	0	0	0	0	0	1	-360	360;
	2	5	0.05695	0.17388	0.0346	0	0	0	0	0	1	-360	360;
	3	4	0.06701	0.17103	0.0128	0	0	0	0	0	1	-360	360;
	4	5	0.01335	0.04211	0	0	0	0	0	0	1	-360	360;
	4	7	0	0.20912	0	0	0	0	0.978	0	1	-360	360;
	4	9	0	0.55618	0	0	0	0	0.969	0	1	-360	360;
	5	6	0	0.25202	0	0	0	0	0.932	0	1	-360	360;
	6	11	0.09498	0.1989	0	0	0	0	0	0	1	-360	360;
	6	12	0.12291	0.25581	0	0	0	0	0	0	1	-360	360;
	6	13	0.06615	0.13027	0	0	0	0	0	0	1	-360	360;
	7	8	0	0.17615	0	0	0	0	0	0	1	-360	360;
	7	9	0	0.11001	0	0	0	0	0	0	1	-360	360;
	9	10	0.03181	0.0845	0	0	0	0	0	0	1	-360	360;
	9	14	0.12711	0.27038	0	0	0	0	0	0	1	-360	360;
	10	11	0.08205	0.19207	0	0	0	0	0	0	1	-360	360;
	12	13	0.22092	0.19988	0	0	0	0	0	0	1	-360	360;
	13	14	0.17093	0.34802	0	0	0	0	0	0	1	-360	360;
	15	16	0.02	0.06	0.03	130	130	130	0	0	1	-360	360;
	15	17	0.05	0.19	0.02	130	130	130	0	0	1	-360	360;
	16	18	0.06	0.17	0.02	65	65	65	0	0	1	-360	360;
	17	18	0.01	0.04	0	130	130	130	0	0	1	-360	360;
	16	19	0.05	0.2	0.02	130	130	130	0	0	1	-360	360;
	16	20	0.06	0.18	0.02	65	65	65	0	0	1	-360	360;
	18	20	0.01	0.04	0	90	90	90	0	0	1	-360	360;
	19	21	0.05	0.12	0.01	70	70	70	0	0	1	-360	360;
	20	21	0.03	0.08	0.01	130	130	130	0	0	1	-360	360;
	20	22	0.01	0.04	0	32	32	32	0	0	1	-360	360;
	20	23	0	0.21	0	65	65	65	0	0	1	-360	360;
	20	24	0	0.56	0	32	32	32	0	0	1	-360	360;
	23	25	0	0.21	0	65	65	65	0	0	1	-360	360;
	23	24	0	0.11	0	65	65	65	0	0	1	-360	360;
	18	26	0	0.26	0	65	65	65	0	0	1	-360	360;
	26	27	0	0.14	0	65	65	65	0	0	1	-360	360;
	26	28	0.12	0.26	0	32	32	32	0	0	1	-360	360;
	26	29	0.07	0.13	0	32	32	32	0	0	1	-360	360;
	26	30	0.09	0.2	0	32	32	32	0	0	1	-360	360;
	28	29	0.22	0.2	0	16	16	16	0	0	1	-360	360;
	30	31	0.08	0.19	0	16	16	16	0	0	1	-360	360;
	29	32	0.11	0.22	0	16	16	16	0	0	1	-360	360;
	32	33	0.06	0.13	0	16	16	16	0	0	1	-360	360;
	33	34	0.03	0.07	0	32	32	32	0	0	1	-360	360;
	24	34	0.09	0.21	0	32	32	32	0	0	1	-360	360;
	24	31	0.03	0.08	0	32	32	32	0	0	1	-360	360;
	24	35	0.03	0.07	0	32	32	32	0	0	1	-360	360;
	24	36	0.07	0.15	0	32	32	32	0	0	1	-360	360;
	35	36	0.01	0.02	0	32	32	32	0	0	1	-360	360;
	29	37	0.1	0.2	0	16	16	16	0	0	1	-360	360;
	36	38	0.12	0.18	0	16	16	16	0	0	1	-360	360;
	37	38	0.13	0.27	0	16	16	16	0	0	1	-360	360;
	38	39	0.19	0.33	0	16	16	16	0	0	1	-360	360;
	39	40	0.25	0.38	0	16	16	16	0	0	1	-360	360;
	39	41	0.11	0.21	0	16	16	16	0	0	1	-360	360;
	42	41	0	0.4	0	65	65	65	0	0	1	-360	360;
	41	43	0.22	0.42	0	16	16	16	0	0	1	-360	360;
	41	44	0.32	0.6	0	16	16	16	0	0	1	-360	360;
	43	44	0.24	0.45	0	16	16	16	0	0	1	-360	360;
	22	42	0.06	0.2	0.02	32	32	32	0	0	1	-360	360;
	20	42	0.02	0.06	0.01	32	32	32	0	0	1	-360	360;
	2	15	0	0.00623	0	0	0	0	0.985	0	1	0	0;
	45	48	0	0.0576	0	250	250	250	0	0	1	-360	360;
	48	49	0.017	0.092	0.158	250	250	250	0	0	1	-360	360;
	49	50	0.039	0.17	0.358	150	150	150	0	0	1	-360	360;
	47	50	0	0.0586	0	300	300	300	0	0	1	-360	360;
	50	51	0.0119	0.1008	0.209	150	150	150	0	0	1	-360	360;
	51	52	0.0085	0.072	0.149	250	250	250	0	0	1	-360	360;
	52	46	0	0.0625	0	250	250	250	0	0	1	-360	360;
	52	53	0.032	0.161	0.306	250	250	250	0	0	1	-360	360;
	53	48	0.01	0.085	0.176	250	250	250	0	0	1	-360	360;
	16	47	0	0.00623	0	0	0	0	0.985	0	1	0	0;
	27	45	0	0.00623	0	0	0	0	0.985	0	1	0	0;
];
