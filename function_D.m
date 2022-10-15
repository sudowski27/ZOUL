function calculated_D = function_D(Omega2_F, Omega2_X)
    Omega_F = Omega2_F ./2;
    Omega_X = Omega2_X ./2;
    
    fraction = Omega_F ./ Omega_X;
    calculated_D = fraction.^2;
end
