function CalculatedT1 = T1(R0, BL, L1, Lc)
    Numerator = R0;

    Denominator = 2 .* B1(L1, Lc, BL);

    CalculatedT1 = Numerator ./ Denominator;
end
