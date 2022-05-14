function save_mpc_data(casefile)

% load mpc casefile
mpc_case = loadcase(casefile);
% set path and file name
file_name = ['matcase/', casefile];

% save case
save(file_name,'-struct','mpc_case');