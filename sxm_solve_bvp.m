% SXM_SOLVE_BVP  Solve a BVP.
%   [t y] = sxm_solve_bvp(f, [a b], [y_a y_b], [y_a_0 y_b_0]) solves the
%   BVP specified by f on the closed interval [a,b] with conditions
%   y(a)=y_a and y(b)=y_b, with initial guesses y(a)=y_a_0 and y(b)=y_b_0.
%
%   See also SXM_PLOT_BVP, SXM_SOLVE_IVP, SXM_PLOT_IVP
function soln = sxm_solve_bvp(f, dom, cond, init)
    init_soln = bvpinit(dom, init);
    cond_fun = @(y_a, y_b) ([y_a(1) - cond(1); y_b(1) - cond(2)]);
    soln = bvp4c(f, cond_fun, init_soln);
end
