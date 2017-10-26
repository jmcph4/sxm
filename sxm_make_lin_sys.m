% SXM_MAKE_LIN_SYS  Construct a linear system of n equations in n unknowns.
%   [A, b] = sxm_make_lin_sys(n) constructs a (random) linear system of n
%   equations in n unknowns, with A being the coefficient matrix and b
%   being the RHS vector.
%
%   See also SXM_GAUSS, SXM_PERF_HILB_GAUSS, SXM_PERF_RAND_GAUSS
function [A, b] = sxm_make_lin_sys(n)
    % preallocate for speed
    A = zeros([n n]);
    b = zeros([n 1]);
    
    % generate A
    for i = 1:n
        for j = 1:n
            A(i,j) = i^.2 + 2 * j + random('norm', n, sqrt(n)); % arbitrary
        end
    end
    
    % generate b
    for i = 1:n
        b(i) = 4 * i + mod(2, i);
    end
end
