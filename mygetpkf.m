function pkf = mygetpkf(pxx, f)
    [ind, v]= find (pxx == max(pxx));
    pkf = f(ind);
end
