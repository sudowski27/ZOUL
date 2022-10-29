function [H_1, S_1] = OpticalFiber(omega, T_1, S_0)
    ArgForExp = -1 ./ pi * (omega .* T_1).^2;
    H_1 = exp(ArgForExp);
    S_1 = S_0 .* H_1;
end
