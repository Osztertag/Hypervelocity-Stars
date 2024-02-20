# Hypervelocity-Stars

Welcome to the Hypervelocity Stars project! This project focuses on simulating the orbital dynamics of a binary star system interacting with a massive black hole. Through numerical simulations, we aim to understand how gravitational interactions shape the trajectories and energies of stars in such systems.

**Problem Statement:**

Consider a binary star system revolving around a massive black hole with specified masses and initial conditions. The binary system is assumed to be in a circular orbit with a given separation when located well outside the black hole's tidal radius. Initially injected into a parabolic orbit around the black hole, the system's trajectories and energies are numerically simulated over time. 

**Project Goals**

The Hypervelocity Stars project aims to accomplish the following objectives:

1. Simulate the orbital evolution of a binary star system around a massive black hole.
2. Analyze the relative positions and trajectories of the stars in the binary system.
3. Investigate the energy evolution of the stars over time.
4. Explore the effects of different initial conditions, such as varying periastron distances and masses, on the system's behavior.

## File Descriptions

- `HVS.m`: This script sets initial parameters and performs numerical simulations of the orbital dynamics of a binary star system around a massive black hole. It also calculates and saves data related to the system's trajectories and energies for analysis.

- `initialc.m`: This function computes and returns the initial conditions for the simulation based on input parameters such as the penetration factor (`D`), black hole mass (`mb`), and star masses (`mp` and `ms`). It calculates the initial positions and velocities of the stars in the binary system.

- `f.m`: This file defines the equations of motion for the stars in the binary system, incorporating gravitational terms due to the black hole. It is used in conjunction with the numerical integration method to update the state vector during the simulation.

- `RK4.m`: This file implements the fourth-order Runge-Kutta numerical integration method, which is used to solve the system's differential equations. It is utilized within the simulation to update the state vector at each time step.

- `energy.m`: This script calculates the energies of the stars in the binary system at each time step of the simulation. It incorporates the masses and positions of the stars to compute their kinetic and potential energies.

- `script4.m`: This script is modified to visualize and interpret the numerical results obtained from the simulation. It plots the trajectories, energies, and other relevant data to analyze the behavior of the binary star system.

## How to Use

To run the code and generate plots:

1. Set the required parameters such as masses and periastron distances in the appropriate script (`HVS.m`).
2. Execute the `HVS.m` script to perform the simulation of the binary star system's orbital dynamics.
3. Once the simulation is complete, execute the `script4.m` file to visualize the numerical results and generate plots.
4. Explore the generated plots to analyze the behavior of the binary star system under different conditions.



