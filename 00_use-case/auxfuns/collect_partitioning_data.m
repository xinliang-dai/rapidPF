function mpc = collect_partitioning_data(mpc_part)
%     mpc.fields_to_merge = {'bus', 'gen', 'branch','gencost'};
    mpc.fields_to_merge = {'bus', 'gen', 'branch'};
    mpc.trans = mpc_part.part_info{1};
    mpc.dist  = mpc_part.part_info(2:end);
    mpc.connection_array = mpc_part.conn_local;
end