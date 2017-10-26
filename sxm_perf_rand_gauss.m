% SXM_PERF_RAND_GAUSS  Solve a random linear system of size n.
%   sxm_perf_rand_gauss(n) solves a linear system of n equations in n
%   unknowns.
%
%   See also SXM_GAUSS, SXM_MAKE_LIN_SYS, SXM_PERF_HILB_GAUSS
function sxm_perf_rand_gauss(n)
    [A, b] = sxm_make_lin_sys(n);
    tic;
    sxm_gauss(A, b);
    toc
end
