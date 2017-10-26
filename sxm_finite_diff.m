% SXM_FINITE_DIFF  Solve BVP using the finite difference method.
%   [t, y] = sxm_finite_diff([a b], [y_a y_b], N, coeffs) solves the ODE
%   defined by the function handles in coeffs on the closed interval [a,b],
%   with conditions y(a)=y_a and y(b)=y_b using N points.
%
%   Note that coeffs must be a cell array of function handles of length 4.
%   
%   See also SXM_SOLVE_BVP, SXM_PLOT_BVP, SXM_GAUSS
function soln = sxm_finite_diff(domain, conditions, n, coeffs)
    % aliases
    a_n = coeffs{1};
    b_n = coeffs{2};
    c_n = coeffs{3};
    d_n = coeffs{4};

    % preallocate for speed
    A = zeros(n, n);
    c = zeros(n, 1);
    t = linspace(domain(1), domain(2), n);

    h = t(2) - t(1); % step size

    % set up boundary conditions
    A(1,1) = 1;
    c(1) = conditions(1);
    A(n, n) = 1;
    c(n) = conditions(2);

    % construct linear system
    for n = 2:(n-1)
        A(n,n-1) = a_n(h);
        A(n,n) = b_n(h);
        A(n,n+1) = c_n(h);
        c(n) = d_n(t(n));
    end
    
    y = A \ c; % solve linear system
    
    soln = {t', y'}; % return results
end