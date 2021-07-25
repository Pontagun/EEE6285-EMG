function mdf = fmygetmdf(pxx, f)
    totp = sum(pxx);  % find total power
    totp2 = totp / 2;
    j = 1;
    acump = 0;
    while acump < totp2
      acump = acump + pxx(j);
      j = j + 1;
    end
    j = j -1; % revert j to indx that went past
    % loop exits when more than half pwer
    % Now interpolate
    accpjn1 = sum(pxx(1:(j-1))); %pwr accum TO J-1
    accpj = sum(pxx(1:(j))); %pwr accun TO J
    m = (accpj - accpjn1)/(f(j) - f(j-1));
    xtra = (totp2 - accpjn1)/m;
    mdf = f(j-1) + xtra;
    % Add by student.
    % the rest is to (optionally) 
    % plot the location of  mdf
%     maxp = max(pxx);   % find the highest vertical value
%     figure;plot(f,pxx); grid on; hold on;
%     line([mdf;mdf], [0,maxp]);
%     title('Periodogram and MDF')
end

