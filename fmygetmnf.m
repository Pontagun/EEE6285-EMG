function mnf = fmygetmnf(pxx, f)
    DENOM = sum(pxx); % denom is the tot pwr
    NUMER = (transpose(f)) * pxx;

    mnf = NUMER / DENOM;
    % the rest is to (optionally) 
    % plot the location of  mnf
%     maxp = max(pxx);   % find highest vert value
%     figure;plot(f,pxx); grid on; hold on;
%     line([mnf;mnf], [0,maxp]);
%     title('Periodogram and MNF')
end
