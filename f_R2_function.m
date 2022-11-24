function f_R2 = f_R2_function(gamma_1, gamma_2, L_1, z)
	arg_for_first_exp = (gamma_1 - gamma_2) .* L_1;
	first_exp = exp(arg_for_first_exp);

	arg_for_second_exp = gamma_2 .* z;
	second_exp = exp(arg_for_second_exp);

	f_R2 = first_exp .* second_exp;
end
