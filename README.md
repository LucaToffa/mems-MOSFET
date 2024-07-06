## Repo for simple project using TCAD and SWB 

Characterization of a mosfet / Analysis of some of its properties

### Problem Statement

Create a MOSFET with the structure shown in Figure 1, using the following parameters:\
WDEV, device width: 1.5μm\
tEPI, epitaxial layer thickness, 2μm\
tSUB, substrate thickness: 1 μm\
L, gate length: 0.5μm\
LDIMP, drain implantation length: 0.5μm\
LSIMP, source implantation length: 0.5μm\
LD, drain electrode length: 0.2μm\
LS, source electrode length: 0.2μm\
Drain and source doping:\
Vertical and lateral profiles: gaussian\
Xj, drain and source junction depth: 0.3μm\
Peak donor concentration: 1018cm-3\
Epitaxial layer doping: 2x1017 cm-3\
Substrate doping: 1019 cm-3\
Gate thickness: 10nm\
Gate material: n+ poly-Si

After generating a suitable mesh, perform the following simulations:
1) Equilibrium state
2) MOSFET transfer characteristic with VDS = 3.3V. Compare the obtained threshold voltage and current gain Kn with the theoretical ones.
3) MOSFET output characteristics with VG = 1,2 and 3V.
4) Biasing the MOSFET with VD = VS = VB = 0, perform an AC simulation at 1MHz, sweeping the gate voltage between -3V and 3V to extract the gate capacitance. Plot the extracted gate capacitance as a function of voltage.
5) Add a shallow boron gaussian doping profile under the gate to adjust the threshold to 0.8V. Consider for the profile a peak concentration CP at the interface between silicon and oxide and a doping concentration of 2x1017 cm-3 at 0.1 μm depth. Repeat the previous simulations with the modified structure.

Write a short report including the following items:
- **Final device mesh**
- **Potential profile in equilibrium**
- **Simulated transfer and output characteristics**
- **Simulated Capacitance-Voltage curves**


### Working pointers
n+ poly si workfunction is 3.95

in sde1, peak val 5e17 to variable to find Vt = 0.8


### Using Typst for the report
- code extensions: Typst LSP, Typst Preview, vscode-pdf ( **ctrl k** then **v** to open pdf preview)
- references: 
    
        https://typst.app/docs/tutorial/writing-in-typst/
        