% SXM_CDIFF  Compute central difference of f at x.
%   df = sxm_cdiff(f, x, h) with h > 0 calculates the central difference of
%   the function f at the point x (with step size h). This approximates
%   f'(x) (with accuracy inversely proportional to the step size, h).
%
%   See also SXM_FDIFF, SXM_BDIFF
function output = sxm_cdiff(f, x, h)
    output = (f(x + h) - f(x - h)) / (2 * h);
end
