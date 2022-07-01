function [delta, dy] = trust_region(A,b,p,yi,nlps,delta)
eta_1 = 0.05;
eta_2 = 0.85;
delta_f = 0;
id_x = 1;
n_region = numel(yi);
theta_1 = 2.5;

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
if rho < eta_1
    delta = sqrt(p'*p)/4;
else
    if rho > eta_2  % && (p'*p - delta^2 < 1e-6)
        delta =  max(theta_1*sqrt(p'*p),delta);
    end
end
% check if update 
if rho < eta_1
    dy = zeros(size(p));
else 
    dy = p;
end
