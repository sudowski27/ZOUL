classdef ClassForPlots
    properties
        T2 = 0.8
        T0 = 0.6

        LC = 7  % [km]
        
        omega_samples

        H0_samples
    end

    methods
        function obj = ClassForPlots()
           obj.omega_samples = 0: 1e-4 : 2 .* pi / obj.T2;

           obj.H0_samples = Transmitter(obj.omega_samples, obj.T0);
        end

        function Draw_Chart1(obj)
            L1 = 15;  % [km]
            R0 = 50;  % [Mbit/s]
            BL = 500;  % [MHzkm]

            figure(1)

            % Calculating samples for S1(omega)
            % ( required for calculation S2(omega) )
            T1_scalar = T1(R0, BL, L1, obj.LC);
            [~, S1_samples] = OpticalFiber(obj.omega_samples, T1_scalar, obj.H0_samples);

            % Calculating samples for S2(omega)
            [~, S2_samples] = Receiver(obj.omega_samples, obj.T2, S1_samples);

            % plotting
            plot(obj.omega_samples, obj.H0_samples, 'LineWidth', 2);

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

        function Draw_Chart2(obj)
            L1 = 15;  % [km]
            BL = 500;  % [MHzkm]
            R0 = [10, 50, 100, 200];  % [Mbit/s]

            LegendStringArray = [];
            figure(2)
            for R0_scalar = R0
                T1_scalar = T1(R0_scalar, BL, L1, obj.LC);
                [~, S1_samples] = OpticalFiber(obj.omega_samples, T1_scalar, obj.H0_samples);
                [~, S2_samples] = Receiver(obj.omega_samples,obj.T2, S1_samples);
                % plotting
                plot(obj.omega_samples, S2_samples, 'LineWidth', 2)
                StringForLegend1 = "R_{0}=";
                StringForLegend2 = int2str(R0_scalar);
                StringForLegend3 = " Mbit/s";

                StringForLegendStringArray = append(StringForLegend1, StringForLegend2, StringForLegend3);
                LegendStringArray = [LegendStringArray, StringForLegendStringArray];
                hold on
            end
            % Labels
            XlabelString = "Znormalizowana wartość częstości \omega ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Legend
            legend(LegendStringArray);

            % Title
            TitleLine1 = "Sygnał wyjściowy S_{2}(\omega) dla różnych szybkości transmisji bitów";
            TitleLine2 = "R_{0}=10, 50, 100, 200 Mbit/s:";
            TitleLine3 = "przy L_{1}=15km; B_{L}=500 MHzkm";

            title([TitleLine1, TitleLine2, TitleLine3]);
        end

        function Draw_Chart3(obj)
            L1 = 15;  % [km]
            BL = 500;  % [MHzkm]
            R0 = [10, 50, 100, 200];  % [Mbit/s]
            time = 0:1e-2:5;
            s2_samples = zeros(1, length(time));
            LegendStringArray = [];
            figure(3)
            for R0_scalar = R0
                T1_scalar = T1(R0_scalar, BL, L1, obj.LC);
                for i = 1:length(time)
                    s2_samples(i) = Fourier_inversion_s2(T1_scalar, obj.T0, obj.T2, time(i));
                end
                plot(time, s2_samples, 'LineWidth', 2)
                hold on
                StringForLegend1 = "R_{0}=";
                StringForLegend2 = int2str(R0_scalar);
                StringForLegend3 = " Mbit/s";

                StringForLegendStringArray = append(StringForLegend1, StringForLegend2, StringForLegend3);
                LegendStringArray = [LegendStringArray, StringForLegendStringArray];
            end
            % Labels
            XlabelString = "czas t [s] ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Legend
            legend(LegendStringArray);

            % Title
            TitleLine1 = "Transformata odwrotna Fouriera s_{2}(t) dla różnych szybkości transmisji bitów";
            TitleLine2 = "R_{0}=10, 50, 100, 200 Mbit/s:";
            TitleLine3 = "przy L_{1}=15km; B_{L}=500 MHzkm";

            title([TitleLine1, TitleLine2, TitleLine3]);
        end

        function Draw_Chart4(obj)
            L1 = [10, 15, 20, 25];  % [km]
            BL = 500;  % [MHzkm]
            R0 = 50; % [Mbit/s]
            LegendStringArray = [];
            figure(4)
            for L1_scalar = L1
                T1_scalar = T1(R0, BL, L1_scalar, obj.LC);
                [~, S1_samples] = OpticalFiber(obj.omega_samples, T1_scalar, obj.H0_samples);
                [~, S2_samples] = Receiver(obj.omega_samples,obj.T2, S1_samples);

                plot(obj.omega_samples, S2_samples, 'LineWidth', 2)

                StringForLegend1 = "L_{1}=";
                StringForLegend2 = int2str(L1_scalar);
                StringForLegend3 = " km";

                StringForLegendStringArray = append(StringForLegend1, StringForLegend2, StringForLegend3);
                LegendStringArray = [LegendStringArray, StringForLegendStringArray];
                hold on
            end
            % Labels
            XlabelString = "Znormalizowana wartość częstości \omega ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Legend
            legend(LegendStringArray);

            % Title
            TitleLine1 = "Sygnał wyjściowy S_{2}(\omega) dla różnych długości włókna";
            TitleLine2 = "L_{1}=10, 15, 20, 25 Mbit/s:";
            TitleLine3 = "przy R_{0}=50Mbit/s; B_{L}=500 MHzkm";

            title([TitleLine1, TitleLine2, TitleLine3]);
        end

        function Draw_Chart5(obj)
            L1 = [10, 15, 20, 25];  % [km]
            BL = 500;  % [MHzkm]
            R0 = 50; % [Mbit/s]
            time = 0:1e-2:5;
            s2_samples = zeros(1, length(time));
            LegendStringArray = [];
            figure(5)
            for L1_scalar = L1
                T1_scalar = T1(R0, BL, L1_scalar, obj.LC);
                for i = 1:length(time)
                    s2_samples(i) = Fourier_inversion_s2(T1_scalar, obj.T0, obj.T2, time(i));
                end
                plot(time, s2_samples, 'LineWidth', 2)
                hold on
                StringForLegend1 = "L_{1}=";
                StringForLegend2 = int2str(L1_scalar);
                StringForLegend3 = " km";

                StringForLegendStringArray = append(StringForLegend1, StringForLegend2, StringForLegend3);
                LegendStringArray = [LegendStringArray, StringForLegendStringArray];
            end
            % Labels
            XlabelString = "czas t [s] ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Legend
            legend(LegendStringArray);

            % Title
            TitleLine1 = "Transformata odwrotna Fouriera s_{2}(t) dla różnych długości włókna";
            TitleLine2 = "L_{1}=10, 15, 20, 25 Mbit/s:";
            TitleLine3 = "przy R_{0}=50Mbit/s; B_{L}=500 MHzkm";

            title([TitleLine1, TitleLine2, TitleLine3]);
        end

        function Draw_Chart6(obj)
            L1 = 15; % [km]
            BL = [100, 500, 1000]; % [MHzkm]
            R0 = 50; % [Mbit/s]
            LegendStringArray = [];
            figure(6)
            for BL_scalar = BL
                T1_scalar = T1(R0, BL_scalar, L1, obj.LC);
                [~, S1_samples] = OpticalFiber(obj.omega_samples, T1_scalar, obj.H0_samples);
                [~, S2_samples] = Receiver(obj.omega_samples,obj.T2, S1_samples);

                plot(obj.omega_samples, S2_samples, 'LineWidth', 2)

                StringForLegend1 = "B_{L}=";
                StringForLegend2 = int2str(BL_scalar);
                StringForLegend3 = " MHzkm";

                StringForLegendStringArray = append(StringForLegend1, StringForLegend2, StringForLegend3);
                LegendStringArray = [LegendStringArray, StringForLegendStringArray];
                hold on
            end
            % Labels
            XlabelString = "Znormalizowana wartość częstości \omega ";
            xlabel(XlabelString);
            YlabelString = "Sygnał wyjściowy";
            ylabel(YlabelString);

            % Legend
            legend(LegendStringArray);

            % Title
            TitleLine1 = "Sygnał wyjściowy S_{2}(\omega) dla różnych długości pasma";
            TitleLine2 = "B_{L}=100, 500, 1000 MHzkm:";
            TitleLine3 = "przy R_{0}=50Mbit/s; L_{1}=15 km";

            title([TitleLine1, TitleLine2, TitleLine3]);
        end
    end
end
