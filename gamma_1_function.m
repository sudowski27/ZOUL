function gamma_1 = gamma_1_function(L_1, r_1, r_2, alpha_s, alpha_l2, L_2)
	first_frac_part = 1 ./ L_1;

	arg_for_log_denom = r_1 .* r_2;
	arg_for_log_num = 1;
	arg_for_log = arg_for_log_num ./ arg_for_log_denom;

	frac_for_log_part = 1 ./ 2;

	log_part = frac_for_log_part .* log(arg_for_log);

	second_part_of_main_brackets = (alpha_s + alpha_l2) .* L_2;

	main_brackets_part = log_part + second_part_of_main_brackets;

	gamma_1 = first_frac_part .* main_brackets_part;
end
