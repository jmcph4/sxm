% SXM_ERRORMAG  Compute error magnification of solution of linear system.
%   m = sxm_errormag(A, b, x, x_c) computes the error magnification of the
%   approximate solution x_c of the linear system Ax=b (relative to x).
function m = sxm_errormag(A, b, x, x_c)
    m = ((norm(x - x_c, Inf))/(norm(x, Inf))) / ...
        ((norm(b - (A * x_c), Inf))/...
        (norm(b, Inf)));
end
