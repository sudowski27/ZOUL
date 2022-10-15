function calculated_psi_f = function_psi_f(x, y, OMEGA2_F)
    calculated_psi_f = sqrt(2./pi); % 1
    Omega_F = OMEGA2_F / 2;
    calculated_psi_f = calculated_psi_f * 1/Omega_F;
    ExpForCalculating = exp((-(x.^2 + y.^2))./(Omega_F.^2));
    calculated_psi_f = calculated_psi_f .* ExpForCalculating;
end
