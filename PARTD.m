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

[pxx, f] = nodcpwelch(A, 500, 250, 500, 1000);

iemg_a = mygetiemg(A);
mav_a = mygetmav(A);
rms_a = mygetrms(A);
var_a = mygetvar(A);

ttp_a = fmygetttp(pxx, f);
mnp_a = fmygetmnp(pxx, f);
pkf_a = fmygetpkf(pxx, f);
mnf_a = fmygetmnf(pxx, f);
mdf_a = fmygetmdf(pxx, f);

[pxx, f] = nodcpwelch(B, 500, 250, 500, 1000);

iemg_b = mygetiemg(B);
mav_b = mygetmav(B);
rms_b = mygetrms(B);
var_b = mygetvar(B);

ttp_b = fmygetttp(pxx, f);
mnp_b = fmygetmnp(pxx, f);
pkf_b = fmygetpkf(pxx, f);
mnf_b = fmygetmnf(pxx, f);
mdf_b = fmygetmdf(pxx, f);