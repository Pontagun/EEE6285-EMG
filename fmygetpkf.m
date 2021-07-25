function pkf = fmygetpkf(pxx, f)
    [ind, v]= find (pxx == max(pxx));
    pkf = f(ind);
end
