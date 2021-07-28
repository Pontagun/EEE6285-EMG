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
[pxx, f] = nodcpwelch(A1, 500, 250, 500, 1000);

a1iemg = mygetiemg(A1);
a1mav = mygetmav(A1);
a1rms = mygetrms(A1);
a1var = mygetvar(A1);

a1ttp = fmygetttp(pxx, f);
a1mnp = fmygetmnp(pxx, f);
a1pkf = fmygetpkf(pxx, f);
a1mnf = fmygetmnf(pxx, f);
a1mdf = fmygetmdf(pxx, f);

[pxx, f] = nodcpwelch(B1, 500, 250, 500, 1000);

b1iemg = mygetiemg(B1);
b1mav = mygetmav(B1);
b1rms = mygetrms(B1);
b1var = mygetvar(B1);

b1ttp = fmygetttp(pxx, f);
b1mnp = fmygetmnp(pxx, f);
b1pkf = fmygetpkf(pxx, f);
b1mnf = fmygetmnf(pxx, f);
b1mdf = fmygetmdf(pxx, f);

%############## 2 ##############
[pxx, f] = nodcpwelch(A2, 500, 250, 500, 1000);

a2iemg = mygetiemg(A2);
a2mav = mygetmav(A2);
a2rms = mygetrms(A2);
a2var = mygetvar(A2);

a2ttp = fmygetttp(pxx, f);
a2mnp = fmygetmnp(pxx, f);
a2pkf = fmygetpkf(pxx, f);
a2mnf = fmygetmnf(pxx, f);
a2mdf = fmygetmdf(pxx, f);

[pxx, f] = nodcpwelch(B2, 500, 250, 500, 1000);

b2iemg = mygetiemg(B2);
b2mav = mygetmav(B2);
b2rms = mygetrms(B2);
b2var = mygetvar(B2);

b2ttp = fmygetttp(pxx, f);
b2mnp = fmygetmnp(pxx, f);
b2pkf = fmygetpkf(pxx, f);
b2mnf = fmygetmnf(pxx, f);
b2mdf = fmygetmdf(pxx, f);

%############## 3 ##############
[pxx, f] = nodcpwelch(A3, 500, 250, 500, 1000);

a3iemg = mygetiemg(A3);
a3mav = mygetmav(A3);
a3rms = mygetrms(A3);
a3var = mygetvar(A3);

a3ttp = fmygetttp(pxx, f);
a3mnp = fmygetmnp(pxx, f);
a3pkf = fmygetpkf(pxx, f);
a3mnf = fmygetmnf(pxx, f);
a3mdf = fmygetmdf(pxx, f);

[pxx, f] = nodcpwelch(B3, 500, 250, 500, 1000);

b3iemg = mygetiemg(B3);
b3mav = mygetmav(B3);
b3rms = mygetrms(B3);
b3var = mygetvar(B3);

b3ttp = fmygetttp(pxx, f);
b3mnp = fmygetmnp(pxx, f);
b3pkf = fmygetpkf(pxx, f);
b3mnf = fmygetmnf(pxx, f);
b3mdf = fmygetmdf(pxx, f);

%############## 4 ##############
[pxx, f] = nodcpwelch(A4, 500, 250, 500, 1000);

a4iemg = mygetiemg(A4);
a4mav = mygetmav(A4);
a4rms = mygetrms(A4);
a4var = mygetvar(A4);

a4ttp = fmygetttp(pxx, f);
a4mnp = fmygetmnp(pxx, f);
a4pkf = fmygetpkf(pxx, f);
a4mnf = fmygetmnf(pxx, f);
a4mdf = fmygetmdf(pxx, f);

[pxx, f] = nodcpwelch(B4, 500, 250, 500, 1000);

b4iemg = mygetiemg(B4);
b4mav = mygetmav(B4);
b4rms = mygetrms(B4);
b4var = mygetvar(B4);

b4ttp = fmygetttp(pxx, f);
b4mnp = fmygetmnp(pxx, f);
b4pkf = fmygetpkf(pxx, f);
b4mnf = fmygetmnf(pxx, f);
b4mdf = fmygetmdf(pxx, f);