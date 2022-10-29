function H_0 = Transmitter(omega, T_0)
    numerator = sin(omega .* T_0);

    denominator = omega .* T_0;

    H_0 = numerator .* denominator;
end
