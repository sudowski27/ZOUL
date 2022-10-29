function calculated_A = function_A(Omega2_X, n_0, Lambda)
    Omega_X = Omega2_X ./ 2;
    k = function_k(n_0, Lambda);
    calculated_A = (k .* Omega_X).^2;
    calculated_A = calculated_A ./ 2;   
end
