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
B1 = B1 - mean(B1);
B2 = B2 - mean(B2);
B3 = B3 - mean(B3);
B4 = B4 - mean(B4);

f1 = figure;
plot(A)
f2 = figure;
plot(B)
% Plot all 4 of the 1‐second segments for record A (A1, A2, A3, A4) in a single figure window, using:
f3 = figure;
subplot(2,2,1); plot(A1)
subplot(2,2,2); plot(A2)
subplot(2,2,3); plot(A3)
subplot(2,2,4); plot(A4)

% Plot all 4 of the 1‐second segments for record B (B1, B2, B3, B4) 
% in a single figure window (same method as b) )
f4 = figure;
subplot(2,2,1); plot(B1)
subplot(2,2,2); plot(B2)
subplot(2,2,3); plot(B3)
subplot(2,2,4); plot(B4)