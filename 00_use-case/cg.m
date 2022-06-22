function x = cg(A,b,toltol,maxit,delta)
% lin
% check alg options
if nargin < 3 || isempty(toltol), toltol = 1e-12; end
if nargin < 4 || isempty(maxit), maxit = min(20,length(b)); end
if nargin < 5 || isempty(delta), delta = []; end

% intial
x = zeros(size(b));
r = -b;  
% without preconditioning
p = -r;
rr = r'*r;
% [obj.HQP(p), obj.AQP'; obj.AQP, obj.KQP]
if isa(A,'function_handle')
    Ap = A(p);
else
    Ap = A*p;   
end
i = 0;
    while max(abs(r))>toltol &&  i<=maxit
        alpha = rr/(p'*Ap);       % one-dim minimizer
%         xk  = x;
        x   = x + alpha*p;        % update state
        r      = r + alpha*Ap;       % update residual
        rr_new = r'*r;
        beta   = rr_new/rr;      % update the parameter to ensure conjugate 
        rr  = rr_new;
        p   = -r + beta*p;
        if isa(A,'function_handle')
            Ap = A(p);
        else
            Ap = A*p;   
        end
        i   = i+1;
    end
end

function tau = find_steplength_on_edge(x,p,delta)
    % tau = arg_tau ||x + tau*p||_M = delta
    xx  = x'*x;
    pp  = p'*p;
    xp  = x'*p;
    tau = (-xp + sqrt(xp^2+pp*(delta^2-xx)))/pp; %7.5.5 Trust Region Methods, SIAM
end