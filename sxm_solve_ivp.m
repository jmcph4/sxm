% SXM_SOLVE_IVP  Solve an IVP.
%   [t y] = sxm_solve_ivp(f, [a b], [y_a dy_a]) solves the
%   IVP specified by f on the closed interval [a,b] with the initial
%   condition y(a)=y_a.
% 
%   See also SXM_PLOT_IVP, SXM_SOLVE_BVP, SXM_PLOT_BVP, SXM_EULER
function soln = sxm_solve_ivp(f, dom, cond)
    soln = ode45(f, dom, cond);
end
