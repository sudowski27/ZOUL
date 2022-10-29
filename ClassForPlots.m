classdef ClassForPlots
    properties
        T2 = 0.8
        T0 = 0.6

        LC = 7  % [km]
        
        omega_samples
    end

    methods
        function obj = ClassForPlots()
           obj.omega_samples = 0: 1e-4 : 2 .* pi / obj.T2;
        end

        function Draw_Chart1(obj)
            L1 = 15;  % [km]
            R0 = 50;  % [Mbit/s]
            BL = 500;  % [MHzkm]

            figure(1)

            % Calculationg samples for H0(omega)
            H0_samples = Transmitter(obj.omega_samples, obj.T0);

            % Calculating samples for S1(omega)
            % ( required for calculation S2(omega) )
            T1_scalar = T1(R0, BL, L1, obj.LC);
            [~, S1_samples] = OpticalFiber(obj.omega_samples, T1_scalar, H0_samples);

            % Calculating samples for S2(omega)
            [~, S2_samples] = Receiver(obj.omega_samples, obj.T2, S1_samples);

            % plotting
            plot(obj.omega_samples, H0_samples, 'LineWidth', 2);

            hold on

            plot(obj.omega_samples, S2_samples, 'LineWidth', 2);

            zeros_array = zeros(1, length(obj.omega_samples));
            plot(obj.omega_samples, zeros_array, '--', 'LineWidth', 1);

            % Legend and Labels
            LegendH0 = "H_{0}(\omega)";
            LegendS2 = "S_{2}(\omega)";
            legend(LegendH0, LegendS2);

            XlabelString = "Znormalizowana wartość częstości \omega ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Title
            TitleString = "Porównanie sygnału wyjściowego H_{0}(\omega) z sygnałem wyjściowym";
            TitleString2 = " S_{2}(\omega)";
            TitleString_2Line = "przy L_{1}=15km; R_{0}=50Mbit/s; B_{L}=500MHzkm";
            TitleString = append(TitleString, TitleString2);
            title([TitleString, TitleString_2Line]);
        end           
    end
end
