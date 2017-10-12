% SXM_BDIFF  Compute backward difference of f at x.
%   df = sxm_bdiff(f, x, h) with h > 0 calculates the backward difference
%   of the function f at the point x (with step size h). This approximates
%   f'(x) (with accuracy inversely proportional to the step size, h).
%
%   See also SXM_FDIFF, SXM_CDIFF
function output = sxm_bdiff(f, x, h)
    output = (f(x) - f(x - h)) / h;
end
