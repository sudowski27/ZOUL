clc;
clear all;
Lambda = 0.85; % [um]
MetricPrefixLambda = 1e-6;
Lambda = Lambda .* MetricPrefixLambda;

% GLOBAL VARIABLES
global OMEGA2_F
OMEGA2_F = 2.5; % [um]
MetricPrefixOMEGA2_F = 1e-6;
OMEGA2_F = OMEGA2_F * MetricPrefixOMEGA2_F;

global OMEGA2_X
OMEGA2_X = 4.5; % [um]
MetricPrefixOMEGA2_X = 1e-6;
OMEGA2_X = OMEGA2_X * MetricPrefixOMEGA2_X;

global OMEGA2_Y
OMEGA2_Y = 4.5; % [um]
MetricPrefixOMEGA2_Y = 1e-6;
OMEGA2_Y = OMEGA2_Y * MetricPrefixOMEGA2_Y;

% Obliczanie Współczynnika sprawności sprzężenia
Eta = [];
Numerator_Eta = [];
Denominator_Eta = [];

% Licznik dla Współczynnika sprawności sprzężenia

% Handlery dla funkcji
psi_b = @(x,y) function_psi_b(x, y, OMEGA2_X, OMEGA2_Y);
psi_f = @(x,y) function_psi_f(x, y, OMEGA2_F);
psi_f_conj = @(x,y) conj(function_psi_f(x, y, OMEGA2_F));

NumFunc = @(x,y) psi_b(x,y) .* psi_f_conj(x,y);

% Obliczanie mianownika

Numerator_Integral = integral2(NumFunc,-OMEGA2_F/2,OMEGA2_X/2,-OMEGA2_F/2,OMEGA2_F/2);
AbsNumerator_Integral = abs(Numerator_Integral);

Numerator_Eta = AbsNumerator_Integral .^ 2;

% Mianownik dla Współczynnika sprawności sprzężenia

% Handlery dla funkcji
psi_b_abs_squere = @(x,y) abs(psi_b(x,y)).^2;
psi_f_abs_squere = @(x,y) abs(psi_f(x,y)).^2;

Denominator_Integral_Left = integral2(psi_b_abs_squere,-OMEGA2_F/2,OMEGA2_X/2,-OMEGA2_F/2,OMEGA2_X/2);
Denominator_Integral_Right = integral2(psi_f_abs_squere,-OMEGA2_F/2,OMEGA2_X/2,-OMEGA2_F/2,OMEGA2_X/2);

Denominator_Eta = Denominator_Integral_Left * Denominator_Integral_Right;

Eta = Numerator_Eta ./ Denominator_Eta;

