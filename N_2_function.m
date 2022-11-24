function N_2 = N_2_function(r_1, r_2)
    numerator = r_1;

    first_frac_in_denominator_numerator = 1 - r_1.^2;
    first_frac_in_denominator_denominator = r_1;

    first_frac_in_denominator = first_frac_in_denominator_numerator ./ first_frac_in_denominator_denominator;

	second_frac_in_denominator_numerator = 1 - r_2.^2;
	second_frac_in_denominator_denominator = r_2;

	second_frac_in_denominator = second_frac_in_denominator_numerator ./ second_frac_in_denominator_denominator;

	denominator = first_frac_in_denominator + second_frac_in_denominator;

	N_2 = numerator ./ denominator;
end	
