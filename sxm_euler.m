% SXM_EULER  Solve ODE via Euler's method.
%   [t y] = sxm_euler(f, [a b], y_0, n) computes an approximate
%   solution of the IVP dy/dt=f(t,y), y(0)=y_0 on the closed interval
%   [a, b] with n steps.
%
%   See also SXM_PERF_EULER
function soln = sxm_euler(f, dom, initial, steps)
    % aliases for convenience
    a = dom(1);
    b = dom(2);

    h = (b - a) / steps; % calculate step size
    
    if h < eps
        error('Loss of precision')
    end

    % preallocate for speed
    t = zeros([1 steps]);
    y = zeros([1 steps]);

    % initialise first elements of both lists
    t(1) = a;
    y(1) = initial;

    % perform Euler's method
    for i=1:steps
        t(i+1)=t(i)+h;
        y(i+1)=y(i)+h*f(t(i),y(i));
    end
    
    soln = [t.' y.'];
end
