function calculated_psi_b = function_psi_b(x, y, OMEGA2_X, OMEGA2_Y)
    OmegaX = OMEGA2_X ./ 2;
    OmegaY = OMEGA2_Y ./ 2;
    calculated_psi_b = sqrt(2 / (pi * OmegaX * OmegaY));
    calculated_psi_b = calculated_psi_b * exp(-(x.^2 /(OmegaX.^2)));
    calculated_psi_b = calculated_psi_b .* exp(-(y.^2/(OmegaY.^2)));
end
