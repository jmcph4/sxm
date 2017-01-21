function output = sxm_linsol(S)
    % sxm_linsol  Solves the linear system Ax=b (wrapper for built-in `\`
    % operator).
    % 
    % Parameters
    %     S - struct
    %         S.A - matrix of coefficients
    %         S.x - column vector of unknowns
    %         S.b - column vector of RHS constants
    % 
    % Return
    %     None.
    % 
    % Examples
    %     S.A = []
    

    output = S.A\S.b;
end
