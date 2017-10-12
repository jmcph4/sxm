% SXM_PERF_EULER  Benchmark for solution of IVP via Euler's method.
%   sxm_perf_euler(n) computes an approximate solution to the IVP
%   dy/dt = y, y(0) = 1 on the unit interval [0,1] with n steps.
%
%   See also SXM_EULER, SXM_PERF_SQMATPOW, SXM_PERF_SUMVEC,
%   SXM_PERF_HILB_GAUSS
function sxm_perf_euler(n)
    f = @(t, y) (y);
    
    tic
    soln = sxm_euler(f, [0 1], 1, n);
    toc
    
    plot(soln(:,1), soln(:,2));
end
