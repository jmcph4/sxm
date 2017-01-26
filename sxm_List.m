classdef sxm_List
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
            s = L.len;
        end
        
        function sref = subsref(L, s)
            switch s(1).type
                case '.'
                    sref = builtin('subsref', L, s);
                case '()'
                    if length(s) < 2
                        sref = builtin('subsref', L.data, s);
                        return
                    else
                        error('sxm_List:subsref', ...
                            'Not a supported subscripted reference')
                    end
                case '{}'
                    error('sxm_List:subsref', ...
                        'Not a supported subscripted reference')
            end
        end
        
        function Lnew = append(L, e)
            Lnew = sxm_List([L.data e]);
        end
        
        function Lnew = insert(L, e, pos)
            front = L.data(1:pos);
            back = L.data(pos+1:L.len);
            Lnew = sxm_List([front e back]);
        end
        
        function Lnew = remove(L, pos)
            front = L.data(1:pos-1);
            back = L.data(pos+1:L.len);
            Lnew = sxm_List([front back]);
        end
        
        function Lnew = plus(L1, L2)
            Lnew = sxm_List(L1.data);
            Lnew.append(L2.data);
        end
        
        function r = in(L, e)
            r = sxm_in(e, L.data);
        end
        
        function Lnew = sort(L)
            Lnew = sxm_List(sort(L.data));
        end
    end 
end

