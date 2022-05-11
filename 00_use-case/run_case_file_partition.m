function mpc_out = run_case_file_partition()

    %% define named indices into bus, branch matrices
    [PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
        VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
    [F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
        TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
        ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
    %% load partitioning result 
    filename = 'ppc_partition.mat';
    myVars = {'baseMVA','branch','bus','edgecut', 'gen', 'gencost', 'regions', 'version'};
    mpc = load(filename,myVars{:});
    %% splitting the casefile
    % get values of some variances
    n_regions = mpc.regions;  % num of regions
    n_edgecut = mpc.edgecut;  % num of edge cuts
    mpc_partitions = cell(n_regions, 1);  % save partition info
    conn_global = zeros(n_edgecut, 4);  % save connection info with global bus id
    tranfo_params = cell(n_edgecut, 1);
    mpc.baseMVA = 100; % remove when matlab - python interface is corrected
    id_conn = 1;  % initialize index
    for i = 1:n_regions
        fprintf('\nCreate sub system #%i\n', i);
        % create sub mpc case in cell i
        % version
        mpc_partitions{i}.version = mpc.version;
        % region
        mpc_partitions{i}.region = i;
        % baseMVA
        mpc_partitions{i}.baseMVA = mpc.baseMVA;
        % bus
        id_buses = find(mpc.bus(:, BUS_AREA) == i - 1);  %% indices of buses in region i
%         mpc_partitions{i}.bus = mpc.bus(id_buses, :);
        % branch 
        id_branches = find(ismember(mpc.branch(:, F_BUS), id_buses)); %% indices of branches in region i
        branches_data = mpc.branch(id_branches, :);
        id_br_in = ismember(mpc.branch(id_branches, T_BUS), id_buses);  %% indices of branches inside the region
        id_br_cut = find(~ismember(mpc.branch(id_branches, T_BUS), id_buses)); %% branches as edgecut
        % gen
        id_gens = find(ismember(mpc.gen(:, 1), id_buses)); %% indices of gen in region i
%         mpc_partitions{i}.gen = mpc.gen(id_gens, :);
        
        % save branches inside the region 
%         mpc_partitions{i}.branch = branches_data(id_br_in, :); 
        [mpc_partitions{i}.i2e, mpc_partitions{i}.bus, mpc_partitions{i}.gen, mpc_partitions{i}.branch] =...
            ext2int(mpc.bus(id_buses, :), mpc.gen(id_gens, :), branches_data(id_br_in, :));
        % add reference bus if there is not slack bus
        if ~ismember(REF, mpc_partitions{i}.bus(:,BUS_TYPE))
            mpc_partitions{i}.bus(1,BUS_TYPE) = REF;
        end
        % save info in connections
        n_br_cut = numel(id_br_cut); % num of conncections in region i
        id_conn_i = linspace(id_conn, id_conn + n_br_cut - 1, n_br_cut)'; % ids in connection

        to_bus_cut_i = branches_data(id_br_cut, T_BUS); % all to_bus of branch cut
        id_bus_cut_reg = mpc.bus(to_bus_cut_i, BUS_AREA); % get to_region

        conn_global(id_conn_i, 1) = i;                            % save from region
        conn_global(id_conn_i, 2) = id_bus_cut_reg + 1;           % save to region
        conn_global(id_conn_i, 3) = branches_data(id_br_cut, F_BUS); % save from bus
        conn_global(id_conn_i, 4) = branches_data(id_br_cut, T_BUS); % save to bus
        conn_global(id_conn_i, 5) = branches_data(id_br_cut, BR_R);  % save BR_R
        conn_global(id_conn_i, 6) = branches_data(id_br_cut, BR_X);  % save BR_X
        conn_global(id_conn_i, 7) = branches_data(id_br_cut, BR_B);  % save BR_B
        conn_global(id_conn_i, 8) = branches_data(id_br_cut, TAP);   % save TAP
        conn_global(id_conn_i, 9) = branches_data(id_br_cut, SHIFT); % save SHIFT
        id_conn = id_conn + n_br_cut;  % update index
    end
    conn_local = conn_global;
    % change connection info from global to local
    for i = 1:size(conn_global,1)
        from_region  = conn_global(i,1);
        to_region    = conn_global(i,2);
        conn_local(i,3) = find(conn_global(i,3)==mpc_partitions{from_region}.i2e);
        conn_local(i,4) = find(conn_global(i,4)==mpc_partitions{to_region}.i2e);
        tranfo_params{i}.r = conn_global(i,5);
        tranfo_params{i}.x = conn_global(i,6);
        tranfo_params{i}.b = conn_global(i,7);
        tranfo_params{i}.ratio = conn_global(i,8);
        tranfo_params{i}.angle = conn_global(i,9);
    end
    % build conn table
%     tab = build_conn_table(conn_global, n_edgecut);
    
    mpc_out.part_info = mpc_partitions;
    mpc_out.conn_local = conn_local;
    mpc_out.trafo_params = tranfo_params;
    mpc_out.origin = mpc;

end

function tab = build_conn_table(conn, n)
    % build table
    from_sys = conn(:, 1);
    to_sys = conn(:, 2);
    from_bus = conn(:, 3);
    to_bus = conn(:, 4);
    br_r = conn(:, 5);
    br_x = conn(:, 6);
    br_b = conn(:, 7);
    tap = conn(:, 8);
    shift = conn(:, 9);
    connections = [1:n]'; 
    tab = table(from_sys, to_sys, from_bus, to_bus, br_r, br_x, br_b, tap, shift,'RowNames', string(connections));
end