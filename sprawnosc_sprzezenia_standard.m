Lambda = 0.85; % [um]
MetricPrefixLambda = 1e-6;

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