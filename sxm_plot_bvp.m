% SXM_PLOT_BVP  Plot the solution of a BVP.
%   sxm_plot_bvp(f, [a b], [y_a y_b], init) plots the solution of the BVP
%   specified by f on the closed interval [a,b] with conditions y(a)=y_a
%   and y(b)=y_b.
% 
%   See also SXM_SOLVE_BVP, SXM_SOLVE_IVP, SXM_PLOT_IVP
function sxm_plot_bvp(f, dom, conds, init)
    soln = sxm_solve_bvp(f, dom, conds, init);
    plot(soln.x, soln.y(1,:));
end
