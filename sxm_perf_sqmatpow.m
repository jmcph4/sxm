function sxm_perf_sqmatpow(n, p)
    % sxm_perf_sqmatsq  Times the execution of raising an nxn matrix to the
    % pth power. Part of performance testing extensions.
    %
    % Parameters
    %     n - dimension of square matrix
    %     p - power to raise matrix to
    % 
    % Return
    %     None.
    %
    % Examples
    %     >> sxm_perf_sqmatsq(2, 2)
    %     Elapsed time is 0.028910 seconds.

    tic
    A = rand(n);
    A^p;
    toc
end
