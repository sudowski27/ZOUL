clear all
clc
close all

T2 = 0.8;
omega_samples = 0:1e-4:2*pi/T2;

H_0_samples = Transmitter(omega_samples, 0.6);

figure(1)
plot(omega_samples, H_0_samples);

L1 = 5e3;
Lc = 7e3;
BL = 100e3;
B1 = BL .* (1 ./ L1 + 1 ./ (3.*Lc));
R0 = 10;
T1 = R0 ./ B1 ./ 2;
[H_1_samples, S_1_samples] = OpticalFiber(omega_samples, T1, H_0_samples);

figure(2);
plot(omega_samples, H_1_samples);

figure(3);

plot(omega_samples, S_1_samples);

T2 = 0.8;
[H_2_samples, S_2_samples] = Receiver(omega_samples, T2, S_1_samples);

figure(4);
plot(omega_samples, H_2_samples);

figure(5);
plot(omega_samples, S_2_samples);

figure(6)
S2 = H_0_samples .* H_1_samples .* H_2_samples;
plot(omega_samples, S2);