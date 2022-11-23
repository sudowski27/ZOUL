function s2 = Fourier_inversion_s2(T1, T_0, T2, t)
    % create handler for function
    s2_handler = @(omega) Sample_S2(omega, T1, T_0, T2);

    s2_handler_for_integral = @(omega) abs(s2_handler(omega)) .* cos(omega * t );

    % calculate Fourier inversion

    s2 = integral(s2_handler_for_integral, 0, 2 .* pi / T2); 
end
