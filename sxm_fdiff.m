% SXM_FDIFF  Compute forward difference of f at x.
%   df = sxm_bdiff(f, x, h) with h > 0 calculates the forward difference
%   of the function f at the point x (with step size h). This approximates
%   f'(x) (with accuracy inversely proportional to the step size, h).
%
%   See also SXM_BDIFF, SXM_CDIFF
function output = sxm_fdiff(f, x, h)
    output = (f(x + h) - f(x)) / h;
end
