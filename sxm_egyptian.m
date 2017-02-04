function c = sxm_egyptian(a, b)
    c = 0;
    p = sxm_egyptian_decomp(a);
    
    for i = 1:length(p)
        c = c + b * 2^p.data(i);
    end
end
