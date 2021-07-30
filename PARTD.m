clear all
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

B = cat(1, B1, B2, B3, B4);
B = B - mean(B);
B1 = B1 - mean(B1);
B2 = B2 - mean(B2);
B3 = B3 - mean(B3);
B4 = B4 - mean(B4);

%############## 1 ##############
[pxx, f] = nodcpwelch(A1, 200, 100, 200, 1000);
a1iemg = round(mygetiemg(A1), 4);
a1mav = round(mygetmav(A1), 4);
a1rms = round(mygetrms(A1), 4);
a1var = round(mygetvar(A1), 4);

a1ttp = round(fmygetttp(pxx, f), 4);
a1mnp = round(fmygetmnp(pxx, f), 4);
a1pkf = round(fmygetpkf(pxx, f), 4);
a1mnf = round(fmygetmnf(pxx, f), 4);
a1mdf = round(fmygetmdf(pxx, f), 4);

[pxx, f] = nodcpwelch(B1, 200, 100, 200, 1000);
b1iemg = round(mygetiemg(B1), 4);
b1mav = round(mygetmav(B1), 4);
b1rms = round(mygetrms(B1), 4);
b1var = round(mygetvar(B1), 4);

b1ttp = round(fmygetttp(pxx, f), 4);
b1mnp = round(fmygetmnp(pxx, f), 4);
b1pkf = round(fmygetpkf(pxx, f), 4);
b1mnf = round(fmygetmnf(pxx, f), 4);
b1mdf = round(fmygetmdf(pxx, f), 4);

%############## 2 ##############
[pxx, f] = nodcpwelch(A2, 200, 100, 200, 1000);
a2iemg = round(mygetiemg(A2), 4);
a2mav = round(mygetmav(A2), 4);
a2rms = round(mygetrms(A2), 4);
a2var = round(mygetvar(A2), 4);

a2ttp = round(fmygetttp(pxx, f), 4);
a2mnp = round(fmygetmnp(pxx, f), 4);
a2pkf = round(fmygetpkf(pxx, f), 4);
a2mnf = round(fmygetmnf(pxx, f), 4);
a2mdf = round(fmygetmdf(pxx, f), 4);

[pxx, f] = nodcpwelch(B2, 200, 100, 200, 1000);
b2iemg = round(mygetiemg(B2), 4);
b2mav = round(mygetmav(B2), 4);
b2rms = round(mygetrms(B2), 4);
b2var = round(mygetvar(B2), 4);

b2ttp = round(fmygetttp(pxx, f), 4);
b2mnp = round(fmygetmnp(pxx, f), 4);
b2pkf = round(fmygetpkf(pxx, f), 4);
b2mnf = round(fmygetmnf(pxx, f), 4);
b2mdf = round(fmygetmdf(pxx, f), 4);

%############## 3 ##############
[pxx, f] = nodcpwelch(A3, 200, 100, 200, 1000);
a3iemg = round(mygetiemg(A3), 4);
a3mav = round(mygetmav(A3), 4);
a3rms = round(mygetrms(A3), 4);
a3var = round(mygetvar(A3), 4);

a3ttp = round(fmygetttp(pxx, f), 4);
a3mnp = round(fmygetmnp(pxx, f), 4);
a3pkf = round(fmygetpkf(pxx, f), 4);
a3mnf = round(fmygetmnf(pxx, f), 4);
a3mdf = round(fmygetmdf(pxx, f), 4);

[pxx, f] = nodcpwelch(B3, 200, 100, 200, 1000);
b3iemg = round(mygetiemg(B3), 4);
b3mav = round(mygetmav(B3), 4);
b3rms = round(mygetrms(B3), 4);
b3var = round(mygetvar(B3), 4);

b3ttp = round(fmygetttp(pxx, f), 4);
b3mnp = round(fmygetmnp(pxx, f), 4);
b3pkf = round(fmygetpkf(pxx, f), 4);
b3mnf = round(fmygetmnf(pxx, f), 4);
b3mdf = round(fmygetmdf(pxx, f), 4);

%############## 4 ##############
[pxx, f] = nodcpwelch(A4, 200, 100, 200, 1000);
a4iemg = round(mygetiemg(A4), 4);
a4mav = round(mygetmav(A4), 4);
a4rms = round(mygetrms(A4), 4);
a4var = round(mygetvar(A4), 4);

a4ttp = round(fmygetttp(pxx, f), 4);
a4mnp = round(fmygetmnp(pxx, f), 4);
a4pkf = round(fmygetpkf(pxx, f), 4);
a4mnf = round(fmygetmnf(pxx, f), 4);
a4mdf = round(fmygetmdf(pxx, f), 4);

[pxx, f] = nodcpwelch(B4, 200, 100, 200, 1000);
b4iemg = round(mygetiemg(B4), 4);
b4mav = round(mygetmav(B4), 4);
b4rms = round(mygetrms(B4), 4);
b4var = round(mygetvar(B4), 4);

b4ttp = round(fmygetttp(pxx, f), 4);
b4mnp = round(fmygetmnp(pxx, f), 4);
b4pkf = round(fmygetpkf(pxx, f), 4);
b4mnf = round(fmygetmnf(pxx, f), 4);
b4mdf = round(fmygetmdf(pxx, f), 4);