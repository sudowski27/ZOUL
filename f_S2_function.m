function f_S2 = f_S2_function(r_2, gamma_1, gamma_2, L_1, z)
	frac_part = 1 ./ r_2;

	arg_for_first_exp = (gamma_1 - gamma_2) .* L_1;
	first_exp_part = exp(arg_for_first_exp);

	arg_for_second_exp = gamma_2 .* z;
	second_exp_part = exp(arg_for_second_exp);

	f_S2 = frac_part .* first_exp_part .* second_exp_part;
end
