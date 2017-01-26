function sxm_plot(S)
    % sxm_plot  Plots the structure S (wrapper for built-in `plot` 
    % function).
    %
    % Parameters
    % S - struct
    %     S.X - vector of x-values
    %     S.Y - vector of y-values
    %     S.fmt - format string for plot
    %     S.lab - array of strings to be axes labels
    %
    % Return
    %     None.
    %
    % Examples
    %     mygraph.X = 0:0.1:2*pi;
    %     mygraph.Y = sin(mygraph.X);
    %     mygraph.fmt = 'g';
    %     mygraph.lab = {'Time', 'Energy'};
    %     sxm_plot(mygraph)
    
    plot(S.X, S.Y, S.fmt)
    xlabel(S.lab(1))
    ylabel(S.lab(2))
end
