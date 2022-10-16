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

% PLOTS

Omega2F_Array = 2.5:0.05:10;
Omega2F_Array = Omega2F_Array .* 1e-6;

% Case 1.1
Omega2X = 3.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

DeltaX = 0.0; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

PHI_TOT_ARRAY_CASE1_1 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE1_1(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
figure(1)
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE1_1, 'LineWidth', 2);
hold on;
Legend1_1 = "2\omega_{x} = 3.5\mum";

% Case 1.2
Omega2X = 5.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

DeltaX = 0.5; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 0; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

PHI_TOT_ARRAY_CASE1_2 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE1_2(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE1_2, 'LineWidth', 2);
hold on;
Legend1_2 = "2\omega_{x} = 5.5\mum";

% Case 1.3
Omega2X = 7.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

DeltaZ = 1; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.0; % [Stopnia]

PHI_TOT_ARRAY_CASE1_3 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE1_3(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
    
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE1_3, 'LineWidth', 2);
hold on;
Legend1_3 = "2\omega_{x} = 7.5\mum";

legend(Legend1_1, Legend1_2, Legend1_3);
xlabel("Średnica modu włókna 2\omega_{F} [\mum]")
ylabel("Straty sprzęgania \Phi_{tot} [dB]")

%Case 2.1
Omega2X = 2.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

Omega2F = 2.5; % [um]
MetricPrefixOmega2F = 1e-6;
Omega2F = Omega2F * MetricPrefixOmega2F;

DeltaX = 0; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 1; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.7; % [Stopnia]

PHI_TOT_ARRAY_CASE2_1 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE2_1(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
figure(2)
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE2_1, 'LineWidth', 2);
hold on;
Legend2_1 = "\Delta_{z} = 1\mum";

%Case 2.2
DeltaZ = 10; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaX = 0.5; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaTeta = 0; % [Stopnia]

PHI_TOT_ARRAY_CASE2_2 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE2_2(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE2_2, 'LineWidth', 2);
hold on;
Legend2_2 = "\Delta_{z} = 10\mum";

%Case 2.3
DeltaZ = 100; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.7; % [Stopnia]

Omega2X = 3.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;


PHI_TOT_ARRAY_CASE2_3 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE2_3(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE2_3, 'LineWidth', 2);
hold on;
Legend2_3 = "\Delta_{z} = 100\mum";
legend(Legend2_1, Legend2_2, Legend2_3);
xlabel("Średnica modu włókna 2\omega_{F} [\mum]")
ylabel("Straty sprzęgania \Phi_{tot} [dB]")

%Case 3.1
Omega2X = 2.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

Omega2F = 2.5; % [um]
MetricPrefixOmega2F = 1e-6;
Omega2F = Omega2F * MetricPrefixOmega2F;

DeltaX = 1; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 0; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.7; % [Stopnia]

PHI_TOT_ARRAY_CASE3_1 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE3_1(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
figure(3)
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE3_1, 'LineWidth', 2);
hold on;
Legend3_1 = "\Delta_{x} = 1\mum";

%Case 3.2
DeltaX = 2; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaTeta = 0.0; % [Stopnia]

DeltaZ = 1; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

PHI_TOT_ARRAY_CASE3_2 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE3_2(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE3_2, 'LineWidth', 2);
hold on;
Legend3_2 = "\Delta_{x} = 2\mum";

%Case 3.3
DeltaX = 3; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaTeta = 0.7; % [Stopnia]

Omega2X = 3.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

PHI_TOT_ARRAY_CASE3_3 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE3_3(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE3_3, 'LineWidth', 2);
hold on;
Legend3_3 = "\Delta_{x} = 3\mum";
legend(Legend3_1, Legend3_2, Legend3_3);
xlabel("Średnica modu włókna 2\omega_{F} [\mum]")
ylabel("Straty sprzęgania \Phi_{tot} [dB]")

%Case 4.1

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

DeltaTeta = 0; % [Stopnia]

DeltaX = 0; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

PHI_TOT_ARRAY_CASE4_1 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE4_1(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
figure(4)
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE4_1, 'LineWidth', 2);
hold on;
Legend4_1 = "\Delta_{\Theta} = 0\circ";

%Case 4.2
DeltaX = 0.5; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 0; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 0.7; % [Stopnia]

PHI_TOT_ARRAY_CASE4_2 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE4_2(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE4_2, 'LineWidth', 2);
hold on;
Legend4_2 = "\Delta_{\Theta} = 0.7\circ";

%Case 4.3
DeltaX = 0.5; % [um]
MetricPrefixDeltaX = 1e-6;
DeltaX = DeltaX * MetricPrefixDeltaX;

DeltaZ = 1; % [um]
MetricPrefixDeltaZ = 1e-6;
DeltaZ = DeltaZ * MetricPrefixDeltaZ;

DeltaTeta = 3; % [Stopnia]

Omega2X = 3.5; % [um]
MetricPrefixOmega2X = 1e-6;
Omega2X = Omega2X * MetricPrefixOmega2X;

PHI_TOT_ARRAY_CASE4_3 = zeros(1,length(Omega2F_Array));
for i = 1:length(Omega2F_Array)
    Omega2F = Omega2F_Array(i);
    PHI_TOT_ARRAY_CASE4_3(i) = function_phi_tot(Omega2F, Omega2X, DeltaX, DeltaZ, DeltaTeta, N_0, Lambda);
end
plot(Omega2F_Array, PHI_TOT_ARRAY_CASE4_3, 'LineWidth', 2);
hold on;
Legend4_3 = "\Delta_{\Theta} = 3\circ";

legend(Legend4_1, Legend4_2, Legend4_3);
xlabel("Średnica modu włókna 2\omega_{F} [\mum]")
ylabel("Straty sprzęgania \Phi_{tot} [dB]")

