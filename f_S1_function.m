function f_S1 = f_S1_function(lambda_1, z, r_2)
	fraction_part = 1 ./ r_2;

	exp_part = exp(-lambda_1 .* z);

	f_S1 = fraction_part .* exp_part;
end
