# Matlab / Simulink projects

This repository contains small Matlab/Simulink projects testing various functionality. 

**Solar Panel Positioning**

Simulates a rotatable solarpanel. Using sun position data, the controller adjusts the rotation of the solarpanel to face the sun for optimal efficiency.

The Motor subsystem generates torque based on applied voltage and the current velocity of the panel. Constants are partially taken from (1) but not necessarily realistic. The applied voltage is calculated using a PI Controller, using the sum of the sun's position and the panel's position. The controller overshoots the panel's position to some degree but then corrects fairly quickly.

The Solar Panel subsystem adjusts the panel's current position and calculates the current velocity from the motor's current torque input.

The input from the sun position data is clamped which restricts the movement to exclude potential faulty input data or unused panel positions.

The panel position and be manually overridden e.g. for maintenance.


**Battery Usage**

Using StateFlow, simulates the state management of a power system that can draw power from the grid or a battery. The battery is changed using solar power and its charge therefore dependent on the time of the day (doesn't consider weather). The system switches to battery power whenever there is enough power stored to power the system for 2 time steps. 
The system calculates the cost of using power from the grid, the cost varies depending on peak or off peak power usage.

An extension of this system could prioritize usage of the battery during peak hours to reduce the cost.


[1] https://www.researchgate.net/publication/284726065_Modeling_Simulation_and_Implementation_of_Brushed_DC_Motor_Speed_Control_Using_Optical_Incremental_Encoder_Feedback
