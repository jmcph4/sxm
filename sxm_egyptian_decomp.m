function powers = sxm_egyptian_decomp(n)
    i = 0;
    powers = sxm_List([]);
    
    if n > 0
        while 2^i < n
            i = i + 1;
        end
        
        if 2^i > n
            i = i - 1;
        end
        
        powers.append(i);
        powers = powers + sxm_egyptian_decomp(n - 2^i);
    end
end
