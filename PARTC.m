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

% f1 = figure;
% plot(A)
% f2 = figure;
% plot(B)
% % Plot all 4 of the 1‐second segments for record A (A1, A2, A3, A4) in a single figure window, using:
% f3 = figure;
% subplot(2,2,1); plot(A1)
% subplot(2,2,2); plot(A2)
% subplot(2,2,3); plot(A3)
% subplot(2,2,4); plot(A4)
% 
% % Plot all 4 of the 1‐second segments for record B (B1, B2, B3, B4) 
% % in a single figure window (same method as b) )
% f4 = figure;
% subplot(2,2,1); plot(B1)
% subplot(2,2,2); plot(B2)
% subplot(2,2,3); plot(B3)
% subplot(2,2,4); plot(B4)

iemg_a = mygetiemg(A);
mav_a = mygetmav(A);
rms_a = mygetrms(A);
var_a = mygetvar(A);

[pxx, f] = nodcpwelch(A, 200, 100, 200, 1000);
ttp_a = mygetttp(pxx, f);
mnp_a = mygetmnp(pxx, f);
pkf_a = mygetpkf(pxx, f);
mnf_a = mygetmnf(pxx, f);
mdf_a = mygetmdf(pxx, f);

iemg_b = mygetiemg(B);
mav_b = mygetmav(B);
rms_b = mygetrms(B);
var_b = mygetvar(B);

[pxx, f] = nodcpwelch(B, 200, 100, 200, 1000);
ttp_b = mygetttp(pxx, f);
mnp_b = mygetmnp(pxx, f);
pkf_b = mygetpkf(pxx, f);
mnf_b = mygetmnf(pxx, f);
mdf_b = mygetmdf(pxx, f);

iemg_a_b = iemg_a - iemg_b;
mav_a_b = mav_a - mav_b;
rms_a_b = rms_a - rms_b;
var_a_b = var_a - var_b;
ttp_a_b = ttp_a - ttp_b;
mnp_a_b = mnp_a - mnp_b;
pkf_a_b = pkf_a - pkf_b;
mnf_a_b = mnf_a - mnf_b;
mdf_a_b = mdf_a - mdf_b;

pc_iemg = iemg_a_b/iemg_a * 100;
pc_mav = mav_a_b/mav_a * 100;
pc_rms = rms_a_b/rms_a * 100;
pc_var = var_a_b/var_a * 100;
pc_ttp = ttp_a_b/ttp_a * 100;
pc_mnp = mnp_a_b/mnp_a * 100;
pc_pkf = pkf_a_b/pkf_a * 100;
pc_mnf = mnf_a_b/mnf_a * 100;
pc_mnd = mdf_a_b/mdf_a * 100;