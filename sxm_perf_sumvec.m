function sxm_perf_sumvec(n)
    % sxm_perf_sumvec  Times the execution of summing a 1xn vector. Part of
    % performance testing extensions.
    %
    % Parameters
    %     n - length of vector
    %
    % Return
    %     None.
    % 
    % Examples
    %     >> sxm_perf_sumvec(100)
    %     Elapsed time is 0.000887 seconds.

    tic
    M = rand(n);
    v = M(1,:);
    sum(v);
    toc
end
