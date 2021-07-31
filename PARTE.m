clear all
close all
clc
load('EMG_A_B.mat');

% As the DC‐level of an EMG signal is not expected to convey any
% information and it is expected to be 0, it is useful to remove 
% any DC‐level (average or mean value) from the EMG segments before analyzing them.
B = cat(1, B1, B2, B3, B4);
B = B - mean(B);
B1 = B1 - mean(B1);
B2 = B2 - mean(B2);
B3 = B3 - mean(B3);
B4 = B4 - mean(B4);
%############## 1 ##############
[pxx, f] = nodcpwelch(B1, 200, 100, 200, 1000);
b1iemg = round(mygetiemg(B1), 4);
b1mav = round(mygetmav(B1), 4);
b1rms = round(mygetrms(B1), 4);
b1var = round(mygetvar(B1), 4);

b1ttp = round(mygetttp(pxx, f), 4);
b1mnp = round(mygetmnp(pxx, f), 4);
b1pkf = round(mygetpkf(pxx, f), 4);
b1mnf = round(mygetmnf(pxx, f), 4);
b1mdf = round(mygetmdf(pxx, f), 4);
%############## 2 ##############
[pxx, f] = nodcpwelch(B2, 200, 100, 200, 1000);
b2iemg = round(mygetiemg(B2), 4);
b2mav = round(mygetmav(B2), 4);
b2rms = round(mygetrms(B2), 4);
b2var = round(mygetvar(B2), 4);

b2ttp = round(mygetttp(pxx, f), 4);
b2mnp = round(mygetmnp(pxx, f), 4);
b2pkf = round(mygetpkf(pxx, f), 4);
b2mnf = round(mygetmnf(pxx, f), 4);
b2mdf = round(mygetmdf(pxx, f), 4);
%############## 3 ##############
[pxx, f] = nodcpwelch(B3, 200, 100, 200, 1000);
b3iemg = round(mygetiemg(B3), 4);
b3mav = round(mygetmav(B3), 4);
b3rms = round(mygetrms(B3), 4);
b3var = round(mygetvar(B3), 4);

b3ttp = round(mygetttp(pxx, f), 4);
b3mnp = round(mygetmnp(pxx, f), 4);
b3pkf = round(mygetpkf(pxx, f), 4);
b3mnf = round(mygetmnf(pxx, f), 4);
b3mdf = round(mygetmdf(pxx, f), 4);
%############## 4 ##############
[pxx, f] = nodcpwelch(B4, 200, 100, 200, 1000);
b4iemg = round(mygetiemg(B4), 4);
b4mav = round(mygetmav(B4), 4);
b4rms = round(mygetrms(B4), 4);
b4var = round(mygetvar(B4), 4);

b4ttp = round(mygetttp(pxx, f), 4);
b4mnp = round(mygetmnp(pxx, f), 4);
b4pkf = round(mygetpkf(pxx, f), 4);
b4mnf = round(mygetmnf(pxx, f), 4);
b4mdf = round(mygetmdf(pxx, f), 4);