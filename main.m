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
% Inicjacja tablic zerami
g_0 = zeros(1, length(Pout_Psg_ratio));
g_0L = zeros(1, length(Pout_Psg_ratio));

for i = 1:length(Beta)
	for j = 1:length(Pout_Psg_ratio)
		g_0(j) = g_0_function(r_1, r_2, alpha_s, L_1, alpha_2l, L_2, alpha_1l, L, Pout_Psg_ratio(j), Beta(i));
        g_0L(j) = g_0(j) .* L;
	end
    plot(g_0L, Pout_Psg_ratio,'LineWidth', 2)
    hold on
end

legend('\beta = 1', '\beta = 3','\beta = 5','\beta = 7','\beta = 9')
str_for_title_1 = 'Wykres 1';
str_for_title_2 = 'Zmiana parametru \beta';
str_for_title_3 = '\alpha_{s}=1\divL_{1}';
str_for_title_4 = "\alpha_{l1}=0.1\divL_{1}";
str_for_title_5 = "\alpha_{l2}=0.1\divL_{2}";
str_for_title_6 = "r_{2}=0.9";
str_for_title_7 = "L_1=7cm";
title({str_for_title_1;
    str_for_title_2;
    str_for_title_3;
    str_for_title_4;
    str_for_title_5;
    str_for_title_6;
    str_for_title_7});
xlabel('g_0L')
ylabel("P_{out} / P_{sg}")

% Wykres 2
number_of_figure = 2;
Pout_Psg_ratio = 0:0.001:0.2;
L_1 = 7e-2;  % 7 [cm]
L = 12e-2;  % 12 [cm]
L_2 = L - L_1;

Beta = 5;
alpha_1l = 0.1 ./ L_1;
alpha_2l = 0.1 ./ L_2;
r_2 = 0.9;
r_1 = 1;

alpha_s(1)=0.05 / L_2;
alpha_s(2)=0.1 / L_2;
alpha_s(3)=0.5 / L_2;
alpha_s(4)=1 / L_2;

figure(number_of_figure)
% Inicjacja tablic zerami
g_0 = zeros(1, length(Pout_Psg_ratio));
g_0L = zeros(1, length(Pout_Psg_ratio));

for i = 1:length(alpha_s)
	for j = 1:length(Pout_Psg_ratio)
		g_0(j) = g_0_function(r_1, r_2, alpha_s(i), L_1, alpha_2l, L_2, alpha_1l, L, Pout_Psg_ratio(j), Beta);
        g_0L(j) = g_0(j) .* L;
	end
    plot(g_0L, Pout_Psg_ratio,'LineWidth', 2)
    hold on
end

legend('\alpha_s = 0.05/L_2', '\alpha_s = 0.1/L_2','\alpha_s = 0.5/L_2','\alpha_s = 1/L_2')
str_for_title_1 = 'Wykres 2';
str_for_title_2 = 'Zmiana parametru \alpha_s';
str_for_title_3 = '\beta=5';
str_for_title_4 = "\alpha_{l1}=0.1/L_1";
str_for_title_5 = "\alpha_{l2}=0.1/L_{2}";
str_for_title_6 = "r_{2}=0.9";
str_for_title_7 = "L_1=7cm";
title({str_for_title_1;
    str_for_title_2;
    str_for_title_3;
    str_for_title_4;
    str_for_title_5;
    str_for_title_6;
    str_for_title_7});
xlabel('g_0L')
ylabel("P_{out} / P_{sg}")

% Wykres 3
number_of_figure = 3;
Pout_Psg_ratio = 0:0.001:0.2;
L_1 = 7e-2;  % 7 [cm]
L = 12e-2;  % 12 [cm]
L_2 = L - L_1;

Beta = 5;
alpha_s = 1 ./ L_2;
alpha_2l = 0.1 ./ L_2;
r_2 = 0.9;
r_1 = 1;

alpha_1l(1)=0.001 / L_1;
alpha_1l(2)=0.01 / L_1;
alpha_1l(3)=0.1 / L_1;
alpha_1l(4)=1 / L_1;

figure(number_of_figure)
% Inicjacja tablic zerami
g_0 = zeros(1, length(Pout_Psg_ratio));
g_0L = zeros(1, length(Pout_Psg_ratio));

for i = 1:length(alpha_1l)
	for j = 1:length(Pout_Psg_ratio)
		g_0(j) = g_0_function(r_1, r_2, alpha_s, L_1, alpha_2l, L_2, alpha_1l(i), L, Pout_Psg_ratio(j), Beta);
        g_0L(j) = g_0(j) .* L;
	end
    plot(g_0L, Pout_Psg_ratio,'LineWidth', 2)
    hold on
end

legend('\alpha_{1l} = 0.001/L_1', '\alpha_{1l} = 0.01/L_1','\alpha_{1l} = 0.1/L_1','\alpha_{1l} = 1/L_1')
str_for_title_1 = 'Wykres 3';
str_for_title_2 = 'Zmiana parametru \alpha_{1l}';
str_for_title_3 = '\beta=5';
str_for_title_4 = "\alpha_{s}=1/L_2";
str_for_title_5 = "\alpha_{l2}=0.1/L_{2}";
str_for_title_6 = "r_{2}=0.9";
str_for_title_7 = "L_1=7cm";
title({str_for_title_1;
    str_for_title_2;
    str_for_title_3;
    str_for_title_4;
    str_for_title_5;
    str_for_title_6;
    str_for_title_7});
xlabel('g_0L')
ylabel("P_{out} / P_{sg}")

% Wykres 4
number_of_figure = 4;
Pout_Psg_ratio = 0:0.001:0.4;
L_1 = 7e-2;  % 7 [cm]
L = 12e-2;  % 12 [cm]
L_2 = L - L_1;

Beta = 5;
alpha_s = 1 ./ L_2;
alpha_2l = 0.1 ./ L_2;
alpha_1l = 0.1 ./ L_1;
r_1 = 1;

r_2(1)=0.9;
r_2(2)=0.8;
r_2(3)=0.7;
r_2(4)=0.6;

figure(number_of_figure)
% Inicjacja tablic zerami
g_0 = zeros(1, length(Pout_Psg_ratio));
g_0L = zeros(1, length(Pout_Psg_ratio));

for i = 1:length(r_2)
	for j = 1:length(Pout_Psg_ratio)
		g_0(j) = g_0_function(r_1, r_2(i), alpha_s, L_1, alpha_2l, L_2, alpha_1l, L, Pout_Psg_ratio(j), Beta);
        g_0L(j) = g_0(j) .* L;
	end
    plot(g_0L, Pout_Psg_ratio,'LineWidth', 2)
    hold on
end

legend('r_2 = 0.9', 'r_2 = 0.8','r_2 = 0.7','r_2 = 0.6')
str_for_title_1 = 'Wykres 4';
str_for_title_2 = 'Zmiana parametru r_2';
str_for_title_3 = '\beta=5';
str_for_title_4 = "\alpha_{s}=1/L_2";
str_for_title_5 = "\alpha_{l2}=0.1/L_{2}";
str_for_title_6 = "\alpha_{l1}=0.1/L_1";
str_for_title_7 = "L_1=7cm";
title({str_for_title_1;
    str_for_title_2;
    str_for_title_3;
    str_for_title_4;
    str_for_title_5;
    str_for_title_6;
    str_for_title_7});
xlabel('g_0L')
ylabel("P_{out} / P_{sg}")
