% nodcpwelch : same as pwelch but removes DC
% from each signal segment before dft computation
% SYNTAX [pxx,f]= nodcpwelch(X,w,noverlap,nfft,fs);
%
function [pxx,f]= nodcpwelch(X,w,noverlap,nfft,fs);

ww = hann(w);
% First compute "A Boundaries
lx = length(X);
segs = floor( lx / w);
ALIMS = zeros(segs,2);
beg =  (linspace(0,(segs-1),segs) )' ;
ALIMS(:,1) = (beg * w)+1;
ALIMS(:,2)= (ALIMS(:,1)) + (w-1);

% B (shifted) limits now
sg = segs - 1;   % we can only have seg -1 other wdws
BLIMS = zeros(sg,2);

offst = w - noverlap;
BLIMS(:,1) = ALIMS(1:sg ,1) + offst;
BLIMS(:,2) = ALIMS(1:sg , 2) + offst;

% Now processing the sges A segments
PA = zeros( (nfft/2) +1 ,1);
for i = 1:segs
    be = ALIMS(i,1);
    nd = ALIMS(i,2);
    XI = X(be:nd);
    XI = XI - (mean(XI) ); %REMOVE DC EACH SEGMENT
    [paa, f]= periodogram(XI,ww,nfft,fs);
    PA = PA + paa;
end

% Now processing the sg B segments
PB = zeros( (nfft/2) +1 ,1);
for i = 1:sg
    be = BLIMS(i,1);
    nd = BLIMS(i,2);
    XI = X(be:nd);
    XI = XI - (mean(XI) ); %REMOVE DC EACH SEGMENT
    [pbb, f]= periodogram(XI,ww,nfft,fs);
    PB = PB + pbb;
end

pxx = (PA + PB)./ (segs + sg);

% pxx = ALIMS;
% 
end
