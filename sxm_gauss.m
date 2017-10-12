% SXM_GAUSS Solve linear system Ax=b via Gaussian elimination.
%   x = sxm_gauss(A, b) computes the solution of the linear system of
%   equations Ax=b via naive Gaussian elimination. Note that the
%   computational complexity of this algorithm is O(n^3) (with A a nxn
%   matrix).
%
% See also SXM_ERRORMAG
function x = sxm_gauss(A, b)
    % check if A is singular
    if det(A) == 0
        error('singular matrix')
    end
    
    sz = size(A);
    n = sz(1);
    
    % elimination phase
    for j = 1:n-1
        for i = j+1:n
            mult = A(i,j) / A(j,j);
            
            for k = j+1:n
                A(i,k) = A(i,k) - mult * A(j,k);
            end
            
            b(i) = b(i) - mult * b(j);
        end
    end
    
    % back-substitution phase
    for i = n:-1:1
        for j = i+1:n
            b(i) = b(i) - A(i,j) * x(j);
        end
        
        x(i) = b(i) / A(i,i);
    end
    
    x = x.'; % transpose x for output
end
