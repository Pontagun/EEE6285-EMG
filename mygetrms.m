function rms = mygetrms(v)
    MSEA = (sum(v .* v))/(length(v));
    rms = sqrt(MSEA);
end