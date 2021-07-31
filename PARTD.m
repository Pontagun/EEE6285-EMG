clear all;
close all
clc
load('EMG_A_B.mat');

% As the DC‐level of an EMG signal is not expected to convey any
% information and it is expected to be 0, it is useful to remove 
% any DC‐level (average or mean value) from the EMG segments before analyzing them.
A = A - mean(A);
A1 = A1 - mean(A1);
A2 = A2 - mean(A2);
A3 = A3 - mean(A3);
A4 = A4 - mean(A4);
%############## 1 ##############
[pxx, f] = nodcpwelch(A1, 200, 100, 200, 1000);
a1iemg = round(mygetiemg(A1), 4);
a1mav = round(mygetmav(A1), 4);
a1rms = round(mygetrms(A1), 4);
a1var = round(mygetvar(A1), 4);

a1ttp = round(mygetttp(pxx, f), 4);
a1mnp = round(mygetmnp(pxx, f), 4);
a1pkf = round(mygetpkf(pxx, f), 4);
a1mnf = round(mygetmnf(pxx, f), 4);
a1mdf = round(mygetmdf(pxx, f), 4);
%############## 2 ##############
[pxx, f] = nodcpwelch(A2, 200, 100, 200, 1000);
a2iemg = round(mygetiemg(A2), 4);
a2mav = round(mygetmav(A2), 4);
a2rms = round(mygetrms(A2), 4);
a2var = round(mygetvar(A2), 4);

a2ttp = round(mygetttp(pxx, f), 4);
a2mnp = round(mygetmnp(pxx, f), 4);
a2pkf = round(mygetpkf(pxx, f), 4);
a2mnf = round(mygetmnf(pxx, f), 4);
a2mdf = round(mygetmdf(pxx, f), 4);
%############## 3 ##############
[pxx, f] = nodcpwelch(A3, 200, 100, 200, 1000);
a3iemg = round(mygetiemg(A3), 4);
a3mav = round(mygetmav(A3), 4);
a3rms = round(mygetrms(A3), 4);
a3var = round(mygetvar(A3), 4);

a3ttp = round(mygetttp(pxx, f), 4);
a3mnp = round(mygetmnp(pxx, f), 4);
a3pkf = round(mygetpkf(pxx, f), 4);
a3mnf = round(mygetmnf(pxx, f), 4);
a3mdf = round(mygetmdf(pxx, f), 4);
%############## 4 ##############
[pxx, f] = nodcpwelch(A4, 200, 100, 200, 1000);
a4iemg = round(mygetiemg(A4), 4);
a4mav = round(mygetmav(A4), 4);
a4rms = round(mygetrms(A4), 4);
a4var = round(mygetvar(A4), 4);

a4ttp = round(mygetttp(pxx, f), 4);
a4mnp = round(mygetmnp(pxx, f), 4);
a4pkf = round(mygetpkf(pxx, f), 4);
a4mnf = round(mygetmnf(pxx, f), 4);
a4mdf = round(mygetmdf(pxx, f), 4);