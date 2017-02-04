classdef sxm_Plot < handle
    %sxm_Plot Represents a graphical plot of a function
    
    properties
        X
        Y
        labels
        fmt
    end
    
    methods
        function obj = sxm_Plot(X, Y, labels, fmt)
            sx = size(X);
            sy = size(Y);
            if sx(1) > 1 || sy(1) > 1
                error('sxm_Plot:sxm_Plot',...
                    'Invalid dimensions for plot data')
            end
            obj.X = X;
            obj.Y = Y;
            obj.labels = sxm_List(labels);
            obj.fmt = fmt;
        end
        
        function plot(P)
            plot(P.X, P.Y, P.fmt)
            %xlabel(P.labels(1).data)
            %ylabel(P.labels(2).data)
        end
        
        function save(P, filename)
            P.plot();
            print('-dpng', filename);
        end
    end
end
