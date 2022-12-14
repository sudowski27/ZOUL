function [H_2, S_2] = Receiver(omega, T_2, S_1)
    abs_omega = abs(omega);
    threshold = 2 .* pi / T_2;

    if abs_omega <= threshold
        H_2 = 0.5 .* ( 1 + cos(omega .* T_2) );
        S_2 = H_2 .* S_1;
    else
        H_2 = 0.5 .* ( 1 + cos(sign(omega) .* threshold .* T_2) );
        S_2 = H_2 .* S_1;
    end

end
