function S2_output = Sample_S2(omega, T1, T_0, T2)
    S0 = Transmitter(omega, T_0);
    [~, S1] = OpticalFiber(omega, T1, S0);
    [~, S_2] = Receiver(omega, T2, S1);

    S2_output = S_2;
end
