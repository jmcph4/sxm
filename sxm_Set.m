classdef sxm_Set < handle
    %SXM_SET Implements the Set ADT.
    properties (SetAccess=protected)
        card
        elems
    end
    
    methods
        function self = sxm_Set(L)
            self.elems = sxm_List(unique(L));
            self.card = length(self.elems);
        end
        
        function l = length(S)
            l = S.card;
        end
        
        function s = size(S)
            s = [1 S.card];
        end
        
        function r = in(S, e)
            r = sxm_in(e, S.elems);
        end
        
        function add(S, e)
            S.elems.append(e);
            S.card = length(S.elems);
        end
        
        function remove(S, e)
            S.elems.remove(e);
            S.card = length(S.elems);
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

