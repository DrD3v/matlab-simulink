% Solar panel
m = 50;               % Mass, [kg]
w = 1.04;             % Width, [m]
l = 1.4;              % Length, [m]
d = 0.1;              % Depth, [m]
A = w*l;              % Area, [m^2]
beta = pi/4;          % Elevation angle, [rad]
Kd = 5;               % Damping constant, [N*m/(rad/s)]
J = m/12*(l^2*cos(beta)^2+d^2*sin(beta)^2+w^2);  % Inertia, [kg*m^2]

% Motor
Kf = 0.07;             % Back EMF cosntant, [V/(rad/s)]
Kt = 0.07;             % Torque constant, [N*m/A]
L = 1e-5;              % Inductance, [H]
R = 8;                % Resistance, [Ohm]
Kg = 2000;             % Gear ratio, []