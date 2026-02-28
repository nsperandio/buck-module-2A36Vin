%% System Data
Vo = 5;     %[V] output voltage
Vi = 20;    %[V] input voltage
Io_max = 2;   %[A] output current
Io_min = 0.5; %[A] output current
ripple_I = 0.30; % [%] ripple (DeltaI/Io)
ripple_V = 0.05; % [%] ripple (DeltaV/Vo)
fsw = 500e3;

Io = linspace(Io_min,Io_max,10);

M = Vo/Vi;
Lmin = Vo/(ripple_I*Io_max*fsw)*(1-M);

L = 10e-6;
DeltaIL = Vo/(L*fsw)*(1-M);

Is_pk = Io_max+ripple_I*Io_max;
Rds = 180e-3; %[Ohm]

Cout_min_ripple = DeltaIL/(8*fsw*ripple_V*Vo);
%% Feedback
Rfbt = 100e3;
Rfbb = 0.75*Rfbt/(Vo-0.75);
%% Frequency
RT = 32537 * (fsw*1e-3)^(-1.045);