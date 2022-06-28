function [delta, dy] = trust_region(A,b,p,yi,nlps,delta)
eta = 1/5;
delta_f = 0;
id_x = 1;
n_region = numel(yi);
det_max = 0.00001;
if isa(A,'function_handle')
    Ap = A(p);
else
    Ap = A*p;   
end
% evaluate rho
for j = 1:n_region
    id_end = id_x + nlps(j).Nxi - 1;
    delta_f = delta_f + nlps(j).local_funs.fi(yi{j}) - nlps(j).local_funs.fi(yi{j} + p(id_x:id_end));
    if j < n_region
        id_x = id_end + 1;
    end
end
rho = - delta_f / (b'*p+p'*Ap/2);
% update delta
if rho < 1/4
    delta = delta/4;
else
    if rho > 3/4  && (p'*p - delta^2 < 1e-6)
        delta = min(2*delta, det_max);
    end
end
% check if update 
if rho > eta
    dy = p;
else 
    dy = zeros(size(p));
end
