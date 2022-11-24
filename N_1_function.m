function N_1 = N_1_function(r_1, r_2)
    first_fraction_in_brackets_numerator = 1 - r_1.^2;
    first_fraction_in_brackets_denominator = r_1;
    first_fraction_in_brackets = first_fraction_in_brackets_numerator ./ first_fraction_in_brackets_denominator;

    second_fraction_in_brackets_numerator = 1 - r_2.^2;
    second_fraction_in_brackets_denominator = r_2;
    second_fraction_in_brackets = second_fraction_in_brackets_numerator ./ second_fraction_in_brackets_denomiantor;

    value_in_brackets = first_fraction_in_brackets + second_fraction_in_brackets;

    fraction_before_brackets = 1 ./ r_2;

    N_1 = value_in_brackets .* fraction_before_brackets;
end
