clear all;
close all;
clc;

% Wykres 1
number_of_figure = 1;
Pout_Psg_ratio = 0:0.001:0.1;
L_1 = 7e-2;  % 7 [cm]
L = 12e-2;  % 12 [cm]
L_2 = L - L_1;

alpha_s = 1 ./ L_2;
alpha_1l = 0.1 ./ L_1;
alpha_2l = 0.1 ./ L_2;
r_2 = 0.9;
r_1 = 1;

Beta(1)=1;
Beta(2)=3;
Beta(3)=5;
Beta(4)=7;
Beta(5)=9;

figure(number_of_figure)
for i = 1:length(Beta)
	for j = 1:length(Pout_Psg_ratio)
		g_0(j) = g_0_function(r_1, r_2, alpha_s, L_1, alpha_2l, L_2, alpha_1l, L, Pout_Psg_ratio(j), Beta(i));
	end
    plot(g_0, Pout_Psg_ratio,'LineWidth', 2)
    hold on
end
legend('\beta = 1', '\beta = 3','\beta = 5','\beta = 7','\beta = 9')