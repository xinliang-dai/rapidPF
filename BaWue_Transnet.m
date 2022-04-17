function mpc = BaWue_Transnet
%MPC_IN_T0  MatPower Simulation Input (t = t0)

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 500;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	2	2	0	0	0	0	0	1	0	220	0	1.05	0.95;
	3	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	4	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	5	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	6	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	7	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	8	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	9	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	10	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	11	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	12	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	13	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	14	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	15	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	16	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	17	1	96.69	46.79	0	0	1	1	0	110	0	1.05	0.95;
	18	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	19	1	44.578	21.5757	0	0	3	1	0	110	0	1.05	0.95;
	20	1	107.25	51.909	0	0	5	1	0	110	0	1.05	0.95;
	21	1	100	48.4	0	0	6	1	0	110	0	1.05	0.95;
	22	1	24.88	12.04	0	0	7	1	0	110	0	1.05	0.95;
	23	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	24	1	31.71091	15.348	0	0	8	1	0	110	0	1.05	0.95;
	25	1	107.25	51.909	0	0	10	1	0	110	0	1.05	0.95;
	26	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	27	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	28	1	173.244	83.85	0	0	11	1	0	110	0	1.05	0.95;
	29	1	36.158	17.5	0	0	12	1	0	110	0	1.05	0.95;
	30	1	244.0466	118.115	0	0	13	1	0	110	0	1.05	0.95;
	31	1	153.05883	74.08	0	0	14	1	0	110	0	1.05	0.95;
	32	1	159.59	77.24	0	0	15	1	0	110	0	1.05	0.95;
	33	1	317.59	153.71	0	0	16	1	0	110	0	1.05	0.95;
	34	1	80.62	39.02	0	0	17	1	0	110	0	1.05	0.95;
	35	1	275.228	133.21	0	0	18	1	0	110	0	1.05	0.95;
	36	1	372.665	180.36986	0	0	19	1	0	110	0	1.05	0.95;
	37	2	0	0	0	0	0	1	0	220	0	1.05	0.95;
	38	1	392.52	189.97	0	0	2	1	0	110	0	1.05	0.95;
	39	1	173.99277	84.2125	0	0	20	1	0	110	0	1.05	0.95;
	40	1	74.1873	35.9066	0	0	21	1	0	110	0	1.05	0.95;
	41	1	285.28	138.07	0	0	22	1	0	110	0	1.05	0.95;
	42	1	122.295	59.19	0	0	23	1	0	110	0	1.05	0.95;
	43	1	177.43	85.87	0	0	25	1	0	110	0	1.05	0.95;
	44	1	63.083	30.532	0	0	26	1	0	110	0	1.05	0.95;
	45	1	126.10726	61.0359	0	0	27	1	0	110	0	1.05	0.95;
	46	1	219.52	106.24768	0	0	28	1	0	110	0	1.05	0.95;
	47	1	273.91077	132.5728	0	0	29	1	0	110	0	1.05	0.95;
	48	1	195.1	94.42	0	0	30	1	0	110	0	1.05	0.95;
	49	1	127.05	61.4922	0	0	31	1	0	110	0	1.05	0.95;
	50	1	181.99	88.08	0	0	32	1	0	110	0	1.05	0.95;
	51	1	14.6448	7.0880832	0	0	33	1	0	110	0	1.05	0.95;
	52	1	159.32	77.11088	0	0	34	1	0	110	0	1.05	0.95;
	53	1	82.855	40.10182	0	0	35	1	0	110	0	1.05	0.95;
	54	1	78.91	38.19244	0	0	0	1	0	110	0	1.05	0.95;
	55	1	347.28365	168.0866	0	0	37	1	0	110	0	1.05	0.95;
	56	3	0	0	0	0	0	1	0	11	0	1.05	0.95;
	57	1	401.698	194.421	0	0	38	1	0	110	0	1.05	0.95;
	58	1	107.25	51.909	0	0	39	1	0	110	0	1.05	0.95;
	59	1	139.98	67.75	0	0	40	1	0	110	0	1.05	0.95;
	60	1	335.308	162.289	0	0	41	1	0	110	0	1.05	0.95;
	61	1	236.908	114.663	0	0	42	1	0	110	0	1.05	0.95;
	62	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	63	1	10.80471	5.22947964	0	0	4	1	0	20	0	1.05	0.95;
	64	1	10.80471	5.22947964	0	0	9	1	0	20	0	1.05	0.95;
	65	1	136.0971	65.8709964	0	0	24	1	0	110	0	1.05	0.95;
	66	1	281.23	136.1152	0	0	43	1	0	110	0	1.05	0.95;
	67	1	144.85	70.1074	0	0	44	1	0	110	0	1.05	0.95;
	68	1	234.43	113.46	0	0	45	1	0	110	0	1.05	0.95;
	69	2	0	0	0	0	0	1	0	11	0	1.05	0.95;
	70	1	492.72	238.47	0	0	46	1	0	110	0	1.05	0.95;
	71	1	129.84	62.84	0	0	47	1	0	110	0	1.05	0.95;
	72	1	249.7207	120.86	0	0	48	1	0	110	0	1.05	0.95;
	73	1	206.9992	100.187	0	0	49	1	0	110	0	1.05	0.95;
	74	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	75	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	76	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	77	1	0	0	0	150	0	1	0	380	0	1.05	0.95;
	78	1	0	0	0	100	0	1	0	220	0	1.05	0.95;
	79	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	80	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	81	1	0	0	0	100	0	1	0	380	0	1.05	0.95;
	82	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	83	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	84	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	85	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	86	1	0	0	0	40	0	1	0	380	0	1.05	0.95;
	87	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	88	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	89	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	90	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	91	1	0	0	0	100	0	1	0	380	0	1.05	0.95;
	92	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	93	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	94	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	95	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	96	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	97	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	98	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	99	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	100	1	0	0	0	100	0	1	0	380	0	1.05	0.95;
	101	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	102	1	0	0	0	50	0	1	0	380	0	1.05	0.95;
	103	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	104	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	105	1	0	0	0	50	0	1	0	380	0	1.05	0.95;
	106	1	0	0	0	50	0	1	0	220	0	1.05	0.95;
	107	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	108	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	109	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	110	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	111	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	112	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	113	1	0	0	0	100	0	1	0	380	0	1.05	0.95;
	114	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	115	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	116	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	117	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	118	2	0	0	0	0	0	1	0	380	0	1.05	0.95;
	119	1	0	0	0	50	0	1	0	220	0	1.05	0.95;
	120	1	0	0	0	100	36	1	0	380	0	1.05	0.95;
	121	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	122	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	123	1	0	0	0	60	0	1	0	380	0	1.05	0.95;
	124	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	125	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	126	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	127	1	0	0	0	100	0	1	0	380	0	1.05	0.95;
	128	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	129	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	130	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	131	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	132	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	133	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	134	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	135	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	136	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	137	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	138	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	139	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	140	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	141	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	142	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	143	1	0	0	0	0	0	1	0	220	0	1.05	0.95;
	144	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	145	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	146	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	147	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	148	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
	149	1	0	0	0	0	0	1	0	380	0	1.05	0.95;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	4	1350	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	5	200	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	6	1000	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	7	1000	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	8	300	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	9	100	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	10	150	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	11	353	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	12	100	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	13	100	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	18	843	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	23	435	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	26	425	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	27	255	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	56	1402	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	62	240	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	69	910	0	0	0	1	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	77	81	0.010446	0.062928	0.00067	0	0	0	0	0	1	-360	360;
	92	82	0.045062	0.150287	0.001022	0	0	0	0	0	1	-360	360;
	81	105	0.007043	0.04318	0.000463	0	0	0	0	0	1	-360	360;
	108	92	0.006502	0.032953	0.000375	0	0	0	0	0	1	-360	360;
	106	108	0.003889	0.01777	0.000133	0	0	0	0	0	1	-360	360;
	130	106	0.004066	0.016188	0.000126	0	0	0	0	0	1	-360	360;
	105	109	0.000465	0.003166	2.9e-05	0	0	0	0	0	1	-360	360;
	119	93	0.001242	0.005083	4.2e-05	0	0	0	0	0	1	-360	360;
	76	124	0.001595	0.007727	8.9e-05	0	0	0	0	0	1	-360	360;
	126	77	0.002727	0.019747	0.000149	0	0	0	0	0	1	-360	360;
	127	89	0.002652	0.016432	0.000151	0	0	0	0	0	1	-360	360;
	82	139	0.021072	0.080254	0.000679	0	0	0	0	0	1	-360	360;
	77	81	0.011451	0.061685	0.000753	0	0	0	0	0	1	-360	360;
	92	82	0.045062	0.150287	0.001022	0	0	0	0	0	1	-360	360;
	81	105	0.00687	0.042141	0.000521	0	0	0	0	0	1	-360	360;
	108	92	0.006425	0.036429	0.000392	0	0	0	0	0	1	-360	360;
	106	108	0.002976	0.016985	0.000134	0	0	0	0	0	1	-360	360;
	130	106	0.003368	0.019333	0.000121	0	0	0	0	0	1	-360	360;
	105	109	0.000807	0.005068	4.5e-05	0	0	0	0	0	1	-360	360;
	119	93	0.001242	0.005083	4.2e-05	0	0	0	0	0	1	-360	360;
	76	124	0.0016	0.007738	8.9e-05	0	0	0	0	0	1	-360	360;
	126	77	0.002731	0.019776	0.000148	0	0	0	0	0	1	-360	360;
	127	89	0.002662	0.016329	0.000151	0	0	0	0	0	1	-360	360;
	82	139	0.018148	0.0737	0.000765	0	0	0	0	0	1	-360	360;
	1	75	0.003004	0.016466	0.000181	0	0	0	0	0	1	-360	360;
	1	83	0.003004	0.016466	0.000181	0	0	0	0	0	1	-360	360;
	110	16	0.000435	0.002408	3e-05	0	0	0	0	0	1	-360	360;
	139	74	0.010943	0.042139	0.000422	0	0	0	0	0	1	-360	360;
	2	78	0.020603	0.079769	0.000603	0	0	0	0	0	1	-360	360;
	15	78	0.008065	0.050494	0.000436	0	0	0	0	0	1	-360	360;
	74	78	0.015337	0.06039	0.000603	0	0	0	0	0	1	-360	360;
	104	78	0.00645	0.026262	0.000326	0	0	0	0	0	1	-360	360;
	119	78	0.036907	0.143508	0.000974	0	0	0	0	0	1	-360	360;
	112	78	0.001543	0.010206	6.9e-05	0	0	0	0	0	1	-360	360;
	77	140	0.002731	0.019776	0.000148	0	0	0	0	0	1	-360	360;
	124	79	0.007765	0.038183	0.000416	0	0	0	0	0	1	-360	360;
	147	137	0.001307	0.00729	8.4e-05	0	0	0	0	0	1	-360	360;
	147	79	3.1e-05	0.000155	0	0	0	0	0	0	1	-360	360;
	82	135	0.006059	0.027372	0.000238	0	0	0	0	0	1	-360	360;
	81	115	0.001867	0.008582	5.1e-05	0	0	0	0	0	1	-360	360;
	133	84	0.00292	0.020088	0.000185	0	0	0	0	0	1	-360	360;
	84	146	0.003172	0.019862	0.000171	0	0	0	0	0	1	-360	360;
	149	84	0.00412	0.030117	0.000277	0	0	0	0	0	1	-360	360;
	2	37	0.011382	0.042789	0.000324	0	0	0	0	0	1	-360	360;
	121	87	0.01515	0.084514	0.000675	0	0	0	0	0	1	-360	360;
	129	86	0.002134	0.01203	0.0001	0	0	0	0	0	1	-360	360;
	102	88	0.010249	0.062708	0.000471	0	0	0	0	0	1	-360	360;
	87	90	0.036281	0.190065	0.001423	0	0	0	0	0	1	-360	360;
	95	90	0.036281	0.190065	0.001423	0	0	0	0	0	1	-360	360;
	85	89	0.001513	0.008499	9.8e-05	0	0	0	0	0	1	-360	360;
	94	89	0.000558	0.002618	4.3e-05	0	0	0	0	0	1	-360	360;
	102	89	0.004857	0.02709	0.000234	0	0	0	0	0	1	-360	360;
	116	89	0.002825	0.0166	0.000249	0	0	0	0	0	1	-360	360;
	91	96	0.004527	0.020567	0.000213	0	0	0	0	0	1	-360	360;
	14	92	0.022386	0.116723	0.001213	0	0	0	0	0	1	-360	360;
	132	92	0.02014	0.105198	0.001098	0	0	0	0	0	1	-360	360;
	96	114	0.006717	0.039952	0.000211	0	0	0	0	0	1	-360	360;
	97	98	0.001242	0.005083	4.2e-05	0	0	0	0	0	1	-360	360;
	114	99	0.006946	0.041253	0.000217	0	0	0	0	0	1	-360	360;
	99	145	0.009427	0.0574	0.000449	0	0	0	0	0	1	-360	360;
	88	100	0.009427	0.0574	0.000449	0	0	0	0	0	1	-360	360;
	89	101	0.00177	0.010395	9.5e-05	0	0	0	0	0	1	-360	360;
	101	100	0.004814	0.025823	0.000246	0	0	0	0	0	1	-360	360;
	86	102	0.004723	0.030037	0.000283	0	0	0	0	0	1	-360	360;
	103	104	8.7e-05	0.00044	5e-06	0	0	0	0	0	1	-360	360;
	139	104	0.01568	0.062928	0.00075	0	0	0	0	0	1	-360	360;
	105	3	0.003495	0.016681	0.000126	0	0	0	0	0	1	-360	360;
	138	105	0.000585	0.003517	5e-05	0	0	0	0	0	1	-360	360;
	105	149	0.005666	0.039684	0.000343	0	0	0	0	0	1	-360	360;
	79	107	0.002197	0.012587	0.000129	0	0	0	0	0	1	-360	360;
	111	98	0.001235	0.007046	5.4e-05	0	0	0	0	0	1	-360	360;
	75	113	0.003157	0.01975	0.00017	0	0	0	0	0	1	-360	360;
	113	114	0.00036	0.002504	2.7e-05	0	0	0	0	0	1	-360	360;
	119	90	0.014877	0.09829	0.003048	0	0	0	0	0	1	-360	360;
	148	118	0.000728	0.00375	4e-05	0	0	0	0	0	1	-360	360;
	121	80	0.011632	0.071311	0.000597	0	0	0	0	0	1	-360	360;
	79	122	0.003759	0.023772	0.0002	0	0	0	0	0	1	-360	360;
	120	122	2.1e-05	0.000121	1e-06	0	0	0	0	0	1	-360	360;
	84	123	0.003157	0.01975	0.00017	0	0	0	0	0	1	-360	360;
	123	146	2e-06	1.1e-05	0	0	0	0	0	0	1	-360	360;
	80	125	0.045062	0.150287	0.001022	0	0	0	0	0	1	-360	360;
	124	91	0.00173	0.010153	0.000102	0	0	0	0	0	1	-360	360;
	110	126	0.001384	0.009644	7.4e-05	0	0	0	0	0	1	-360	360;
	126	118	0.002045	0.013331	8.8e-05	0	0	0	0	0	1	-360	360;
	127	99	0.000671	0.005514	6.9e-05	0	0	0	0	0	1	-360	360;
	128	98	0.002542	0.022174	0.000244	0	0	0	0	0	1	-360	360;
	127	110	0.004294	0.029917	0.000239	0	0	0	0	0	1	-360	360;
	127	116	0.002298	0.016682	0.000161	0	0	0	0	0	1	-360	360;
	128	117	0.008825	0.046183	0.000375	0	0	0	0	0	1	-360	360;
	123	127	0.003639	0.025042	0.000235	0	0	0	0	0	1	-360	360;
	127	126	0.005677	0.039458	0.000325	0	0	0	0	0	1	-360	360;
	146	127	0.003624	0.025167	0.000229	0	0	0	0	0	1	-360	360;
	122	129	0.002882	0.016167	0.000129	0	0	0	0	0	1	-360	360;
	3	131	0.00413	0.018034	0.000133	0	0	0	0	0	1	-360	360;
	109	131	0.007463	0.032589	0.000241	0	0	0	0	0	1	-360	360;
	132	14	0.003444	0.018035	0.000192	0	0	0	0	0	1	-360	360;
	109	133	0.000651	0.004615	4.2e-05	0	0	0	0	0	1	-360	360;
	134	149	0.001307	0.00729	8.4e-05	0	0	0	0	0	1	-360	360;
	80	136	0.00645	0.026262	0.000326	0	0	0	0	0	1	-360	360;
	37	141	0.004717	0.023254	0.000258	0	0	0	0	0	1	-360	360;
	119	141	0.007874	0.039548	0.000427	0	0	0	0	0	1	-360	360;
	143	98	0.012526	0.067482	0.000571	0	0	0	0	0	1	-360	360;
	143	111	0.011572	0.06251	0.00052	0	0	0	0	0	1	-360	360;
	142	83	0.001918	0.010938	0.000118	1066	0	0	0	0	1	-360	360;
	107	142	0.003318	0.018561	0.000191	0	0	0	0	0	1	-360	360;
	142	116	0.003518	0.020433	0.000204	0	0	0	0	0	1	-360	360;
	145	137	0.000246	0.001378	1.1e-05	0	0	0	0	0	1	-360	360;
	148	101	0.003004	0.016466	0.000181	0	0	0	0	0	1	-360	360;
	144	148	0.000246	0.001378	1.1e-05	0	0	0	0	0	1	-360	360;
	77	78	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	118	119	0	0.0625	0	300	300	300	1	0	1	-360	360;
	54	121	0	0.0625	0	300	300	300	1	0	1	-360	360;
	77	78	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	118	119	0	0.0625	0	300	300	300	1	0	1	-360	360;
	120	121	0	0.0625	0	300	300	300	1	0	1	-360	360;
	27	37	0	0.0625	0	600	600	600	1	0	1	-360	360;
	4	78	0	0.0625	0	2000	2000	2000	1	0	1	-360	360;
	26	37	0	0.0625	0	600	600	600	1	0	1	-360	360;
	23	37	0	0.0625	0	600	600	600	1	0	1	-360	360;
	18	37	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	5	76	0	0.0625	0	600	600	600	1	0	1	-360	360;
	11	77	0	0.0625	0	620	620	620	1	0	1	-360	360;
	6	85	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	7	95	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	8	88	0	0.0625	0	600	600	600	1	0	1	-360	360;
	62	93	0	0.0625	0	300	300	300	1	0	1	-360	360;
	9	109	0	0.0625	0	600	600	600	1	0	1	-360	360;
	10	115	0	0.0625	0	600	600	600	1	0	1	-360	360;
	56	126	0	0.0625	0	2000	2000	2000	1	0	1	-360	360;
	11	78	0	0.0625	0	300	300	300	1	0	1	-360	360;
	12	131	0	0.0625	0	600	600	600	1	0	1	-360	360;
	69	138	0	0.0625	0	2000	2000	2000	1	0	1	-360	360;
	13	140	0	0.0625	0	600	600	600	1	0	1	-360	360;
	29	14	0	0.0625	0	200	200	200	1	0	1	-360	360;
	30	15	0	0.0625	0	200	200	200	1	0	1	-360	360;
	17	78	0	0.0625	0	200	200	200	1	0	1	-360	360;
	33	79	0	0.0625	0	350	350	350	1	0	1	-360	360;
	35	82	0	0.0625	0	200	200	200	1	0	1	-360	360;
	36	84	0	0.0625	0	600	600	600	1	0	1	-360	360;
	38	37	0	0.0625	0	300	300	300	1	0	1	-360	360;
	40	87	0	0.0625	0	200	200	200	1	0	1	-360	360;
	19	89	0	0.0625	0	300	300	300	1	0	1	-360	360;
	41	91	0	0.0625	0	300	300	300	1	0	1	-360	360;
	42	92	0	0.0625	0	200	200	200	1	0	1	-360	360;
	63	93	0	0.0625	0	15	15	15	1	0	1	-360	360;
	65	93	0	0.0625	0	200	200	200	1	0	1	-360	360;
	43	96	0	0.0625	0	200	200	200	1	0	1	-360	360;
	98	44	0	0.0625	0	200	200	200	1	0	1	-360	360;
	45	100	0	0.0625	0	300	300	300	1	0	1	-360	360;
	46	101	0	0.0625	0	200	200	200	1	0	1	-360	360;
	47	102	0	0.0625	0	300	300	300	1	0	1	-360	360;
	20	111	0	0.0625	0	300	300	300	1	0	1	-360	360;
	51	116	0	0.0625	0	200	200	200	1	0	1	-360	360;
	21	119	0	0.0625	0	200	200	200	1	0	1	-360	360;
	55	123	0	0.0625	0	600	600	600	1	0	1	-360	360;
	57	127	0	0.0625	0	300	300	300	1	0	1	-360	360;
	60	130	0	0.0625	0	300	300	300	1	0	1	-360	360;
	61	132	0	0.0625	0	200	200	200	1	0	1	-360	360;
	66	133	0	0.0625	0	600	600	600	1	0	1	-360	360;
	70	139	0	0.0625	0	200	200	200	1	0	1	-360	360;
	2	28	0	0.0625	0	200	200	200	1	0	1	-360	360;
	29	14	0	0.0625	0	200	200	200	1	0	1	-360	360;
	30	15	0	0.0625	0	200	200	200	1	0	1	-360	360;
	17	78	0	0.0625	0	200	200	200	1	0	1	-360	360;
	33	79	0	0.0625	0	350	350	350	1	0	1	-360	360;
	35	82	0	0.0625	0	200	200	200	1	0	1	-360	360;
	36	84	0	0.0625	0	600	600	600	1	0	1	-360	360;
	38	37	0	0.0625	0	300	300	300	1	0	1	-360	360;
	40	87	0	0.0625	0	200	200	200	1	0	1	-360	360;
	19	89	0	0.0625	0	300	300	300	1	0	1	-360	360;
	41	91	0	0.0625	0	300	300	300	1	0	1	-360	360;
	42	92	0	0.0625	0	200	200	200	1	0	1	-360	360;
	64	93	0	0.0625	0	15	15	15	1	0	1	-360	360;
	43	96	0	0.0625	0	200	200	200	1	0	1	-360	360;
	98	44	0	0.0625	0	200	200	200	1	0	1	-360	360;
	46	101	0	0.0625	0	200	200	200	1	0	1	-360	360;
	47	102	0	0.0625	0	300	300	300	1	0	1	-360	360;
	25	111	0	0.0625	0	300	300	300	1	0	1	-360	360;
	51	116	0	0.0625	0	200	200	200	1	0	1	-360	360;
	55	123	0	0.0625	0	600	600	600	1	0	1	-360	360;
	57	127	0	0.0625	0	300	300	300	1	0	1	-360	360;
	60	130	0	0.0625	0	200	200	200	1	0	1	-360	360;
	61	132	0	0.0625	0	110	110	100	1	0	1	-360	360;
	66	133	0	0.0625	0	600	600	600	1	0	1	-360	360;
	70	139	0	0.0625	0	200	200	200	1	0	1	-360	360;
	2	28	0	0.0625	0	200	200	200	1	0	1	-360	360;
	30	15	0	0.0625	0	200	200	200	1	0	1	-360	360;
	22	78	0	0.0625	0	200	200	200	1	0	1	-360	360;
	35	82	0	0.0625	0	200	200	200	1	0	1	-360	360;
	38	37	0	0.0625	0	200	200	200	1	0	1	-360	360;
	24	89	0	0.0625	0	200	200	200	1	0	1	-360	360;
	51	116	0	0.0625	0	200	200	200	1	0	1	-360	360;
	57	127	0	0.0625	0	300	300	300	1	0	1	-360	360;
	70	139	0	0.0625	0	200	200	200	1	0	1	-360	360;
	38	37	0	0.0625	0	200	200	200	1	0	1	-360	360;
	57	127	0	0.0625	0	300	300	300	1	0	1	-360	360;
	70	139	0	0.0625	0	200	200	200	1	0	1	-360	360;
	70	139	0	0.0625	0	200	200	200	1	0	1	-360	360;
	2	28	0	0.0625	0	200	200	200	1	0	1	-360	360;
	31	16	0	0.0625	0	200	200	200	1	0	1	-360	360;
	32	74	0	0.0625	0	200	200	200	1	0	1	-360	360;
	34	81	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	39	86	0	0.0625	0	300	300	300	1	0	1	-360	360;
	45	100	0	0.0625	0	300	300	300	1	0	1	-360	360;
	48	103	0	0.0625	0	200	200	200	1	0	1	-360	360;
	49	107	0	0.0625	0	300	300	300	1	0	1	-360	360;
	50	113	0	0.0625	0	300	300	300	1	0	1	-360	360;
	52	117	0	0.0625	0	300	300	300	1	0	1	-360	360;
	53	120	0	0.0625	0	300	300	300	1	0	1	-360	360;
	58	128	0	0.0625	0	300	300	300	1	0	1	-360	360;
	59	129	0	0.0625	0	300	300	300	1	0	1	-360	360;
	67	134	0	0.0625	0	300	300	300	1	0	1	-360	360;
	68	136	0	0.0625	0	300	300	300	1	0	1	-360	360;
	141	71	0	0.0625	0	200	200	200	1	0	1	-360	360;
	72	143	0	0.0625	0	300	300	300	1	0	1	-360	360;
	73	144	0	0.0625	0	300	300	300	1	0	1	-360	360;
	82	81	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	90	89	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	95	94	0	0.0625	0	1000	1000	1000	1	0	1	-360	360;
	99	98	0	0.0625	0	300	300	300	1	0	1	-360	360;
	105	106	0	0.0625	0	660	660	660	1	0	1	-360	360;
	109	108	0	0.0625	0	110	0	0	1	0	1	-360	360;
	127	128	0	0.0625	0	300	300	300	1	0	1	-360	360;
	136	137	0	0.05	0	600	600	600	1	0	1	-360	360;
	142	143	0	0.0625	0	350	350	350	1	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
	2	0	0	3	0	1	0;
];
