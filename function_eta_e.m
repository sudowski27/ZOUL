function calculated_eta_e = function_eta_e(Omega2_F, Omega2_X, Omega2_Y, Lambda, DeltaX, DeltaY, DeltaZ, Delta_Teta)
    calculated_eta_e = function_eta_x(Omega2_F, Omega2_X, Lambda, DeltaZ, DeltaX);
    calculated_eta_e = calculated_eta_e .* function_eta_y(Omega2_F, Omega2_Y, Lambda, DeltaZ, DeltaY);
    calculated_eta_e = calculated_eta_e .* function_eta_teta(Omega2_F, Omega2_X, Lambda, Delta_Teta);
end
