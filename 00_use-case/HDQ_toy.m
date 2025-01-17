%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    min (x1-1)^2 + (x2+1)^2   s.t. x1=x2
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

H = [2,0;0 2];
E1 = 1;
E2 = 1;
E  = [E1;E2];
v0 = [0;0];
x0 = [1;1];
x  = x0;
v  = v0;
k  = 0
flag = false
while k<10 && ~flag
    x(1) = (-v(1)+2)/2;
    x(2) = (-v(2)-2)/2;
    z = inv(E'*H*E)*E'*H*x;
    v = v + H*(x-E*z);
    if norm(x-E*z)<1e-8
        flag = true;
    else
        k = k+1;
    end
end

% for k = 1:10
%     for i = 1:2
%         x(i) = (-v(i)+2)/2;
%     end
%     z = inv(E'*H*E')
% end