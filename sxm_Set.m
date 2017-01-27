classdef sxm_Set
    %SXM_SET Implements the Set ADT.
    properties (SetAccess=protected)
        card
        elems
    end
    
    methods
        function self = sxm_Set(L)
            self.elems = unique(L);
            self.card = length(self.elems);
        end
        
        function l = length(S)
            l = S.card;
        end
        
        function s = size(S)
            s = S.card;
        end
        
        function r = in(S, e)
            r = sxm_in(e, S.elems);
        end
        
        function U = union(S, T)
            U = sxm_Set(union(S.elems, T.elems));
        end
        
        function I = intersection(S, T)
            I = sxm_Set(intersect(S.elems, T.elems));
        end
        
        function D = minus(S, T)
            D = sxm_Set(setdiff(S.elems, T.elems));
        end
    end
    
end

