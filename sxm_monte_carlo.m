% SXM_MONTE_CARLO  Integrate arbitrary shapes using Monte Carlo method.
%   area = sxm_monte_carlo(domain, shapefunc, n) finds the area or volume
%   (or other, higher-dimensional equivalent) of the shape defined by
%   shapefunc. Note that domain must *totally* enclose the shape defined by
%   shapefunc. Also note that accuracy is proportional to the number of
%   points, n.
%
%   Example
%       area = sxm_monte_carlo([-5 5; -5 5], @(vec)(vec(1)^2+vec(2)^2<=1),
%           10000);
%       finds the area of the unit circle centred at the origin by using
%       10000 points in the square region bounded by x=-5, x=5, y=-5, y=5.
function area = sxm_monte_carlo(dom, mem, n)
    if n == 0 % bounds check the number of points
        error('nonpositive number of points')
    end
    
    sz = size(dom);
    
    dim = sz(1);
    vec = zeros(dim);
    hits = 0;
    points = zeros([n 2]);
    
    for i = 1:n
        % construct vector elementwise
        for j = 1:dim
            a = dom(j,1);
            b = dom(j,2);
            vec(j) = (b-a).*rand + a;
        end
        
        % check for membership
        if mem(vec)
            hits = hits + 1; % increment hit counter
        end
        
        points(i,1) = vec(1);
        points(i,2) = vec(2);
    end
    
    % calculate area of n-box
    total_area = abs(dom(1,1) - dom(1,2));
    
    for i = 2:dim
        a = dom(i,1);
        b = dom(i,2);
        total_area = total_area * abs(b - a);
    end
    
    p = hits / n;
    area = p * total_area;
end
