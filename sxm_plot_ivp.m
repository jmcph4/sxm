% SXM_PLOT_BVP  Plot the solution of an IVP.
%   sxm_plot_bvp(f, [a b], [y_a dy_a) plots the solution of the IVP
%   specified by f on the closed interval [a,b] with the initial condition
%   y(a)=y_a.
% 
%   See also SXM_SOLVE_IVP, SXM_SOLVE_BVP, SXM_PLOT_BVP
function sxm_plot_ivp(f, dom, cond)
    soln = sxm_solve_ivp(f, dom, cond);
    plot(soln.x, soln.y(1,:));
end
