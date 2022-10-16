clear all;
clc;

Omega2X = 2.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

Omega2F = 2.5; % [um]
MetricPrefixOmega2F = 1e-6;
Omega2F = Omega2F * MetricPrefixOmega2F;

DeltaX = 0.5; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 1; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.7; % [Stopnia]

N_0 = 1;

Lambda = 0.85; % [um]
MetricPrefixLambda = 1e-6;
Lambda = Lambda * MetricPrefixLambda;

ETA_tot = function_eta_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);

PHI_tot = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
