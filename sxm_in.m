function output = sxm_in(a, S)
    % sxm_in  Tests if a is in S.
    % 
    % Parameters
    %     a - numeric
    %     S - matrix
    %
    % Return
    %     1 if a is in S,
    %     0 otherwise
    %
    % Examples
    %     sxm_in(3, [1 2 3; 100 200 300]) == 1
    
    res = (S == a);
    output = any(any(res));
end
