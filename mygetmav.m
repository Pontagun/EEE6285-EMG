function mav = mygetmav(v)
    iemg = sum(abs(v));
    mav = iemg / (length(v));
end