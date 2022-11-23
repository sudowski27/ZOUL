function Calculated_B1 = B1(L1, Lc, BL)
    FirstFraction = 1 ./ L1;
    SecondFraction = 1 ./ (3 .* Lc);

    Calculated_B1 = BL .* (FirstFraction  + SecondFraction);
end
