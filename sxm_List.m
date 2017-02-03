classdef sxm_List < handle
    %sxm_List Implements the linear list ADT
    
    properties (SetAccess=protected)
        len
        data
    end
    
    methods
        function self = sxm_List(elems)
            self.len = length(elems);
            self.data = elems;
        end
        
        function l = length(L)
            l = L.len;
        end
        
        function s = size(L)
            s = [1 L.len];
        end
        
%         function sref = subsref(L, s)
%             switch s(1).type
%                 case '.'
%                     sref = builtin('subsref', L, s);
%                 case '()'
%                     if length(s) < 2
%                         sref = builtin('subsref', L.data, s);
%                         return
%                     else
%                         error('sxm_List:subsref', ...
%                             'Not a supported subscripted reference')
%                     end
%                 case '{}'
%                     error('sxm_List:subsref', ...
%                         'Not a supported subscripted reference')
%             end
%         end
        
        function append(L, e)
            L.insert(e, L.len);
        end
        
        function insert(L, e, pos)
            front = L.data(1:pos);
            back = L.data(pos+1:L.len);
            L.data = [front e back];
            L.len = L.len + length(e);
        end
        
        function remove(L, pos)
            front = L.data(1:pos-1);
            back = L.data(pos+1:L.len);
            L.data = [front back];
            L.len = L.len - 1;
        end
        
        function Lnew = plus(L1, L2)
            Lnew = sxm_List(L1.data);
            Lnew.extend(L2.data);
        end
        
        function r = in(L, e)
            r = sxm_in(e, L.data);
        end
        
        function sort(L)
            L.data = sort(L.data);
        end
        
        function extend(L, l)
            L.append(l);
        end
    end 
end

