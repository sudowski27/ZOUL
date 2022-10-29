T2 = 0.8;
omega_samples = 0:1e-4:2*pi/T2;

H_0_samples = Transmitter(omega_samples, 0.6);

plot(omega_samples, H_0_samples);