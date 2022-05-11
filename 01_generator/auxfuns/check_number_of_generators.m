% check the number of generators in merged case-file is as expected
% error when the Ngen_trans + Ngen_dist - Ngen_trafo_dist_bus ~= Ngen_mpc
function check_number_of_generators(Ngen_trans, Ngen_dist, Ngen_trafo_dist_bus, Ngen_mpc)
    if ~(Ngen_trans + Ngen_dist - sum(Ngen_trafo_dist_bus) == Ngen_mpc || Ngen_trans + Ngen_dist == Ngen_mpc)
        warning('number of generators are not correct');
    end
end