% SXM_PERF_HILB_GAUSS  Benchmark for Gaussian solution of Hilbert matrices
%   sxm_perf_hilb_gauss(n) times the solution of the Hilbert matrix of size
%   n via naive Gaussian elimination (i.e. sxm_gauss).
%
% Note that the largest nonsingular Hilbert matrix is of size n = 28.
%
% See also SXM_GAUSS, SXM_PERF_SQMATPOW, SXM_PERF_SUMVEC
function sxm_perf_hilb_gauss(n)
    A = hilb(n);
    b = ones(n);
    
    tic
    sxm_gauss(A, b);
    toc
end
