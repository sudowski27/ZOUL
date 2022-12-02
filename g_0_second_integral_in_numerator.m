function integral_ans = g_0_second_integral_in_numerator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, L)
	zmin = L_1;
	zmax = L;
	fun = @(z) arg_for_g_0_second_integral_in_numerator(L_1, r_1, r_2, alpha_s, alpha_l2, L_2, z);

	bare_integral = integral(fun, zmin, zmax);
	integral = 2 .* bare_integral;
end
