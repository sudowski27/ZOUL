function integral_ans = g_0_first_integral_in_numerator(alpha_s, L_1, r_1, r_2, alpha_l2, L_2, alpha_l1)
	zmin = 0;
	zmax = L_1;
	fun = @(z) arg_for_g_0_first_integral_in_numerator(alpha_s, L_1, r_1, r_2, alpha_l2, L_2, z, alpha_l1);

	bare_integral = integral(fun, zmin, zmax);
	integral_ans = 2 .* bare_integral;
end
