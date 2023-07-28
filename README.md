# aloe-sky130
This project ports an automatic analog layout generation tool called [aloe](https://ieeexplore.ieee.org/document/9524486) to work with SkyWater 130 nm technology. Aloe uses a digital place and route tool together with a genetic algorithm to meet different analog layout specifications. Using this tool, we generated several layouts for a bandgap voltage reference (BGR) circuit on this chip, and we compared these with a manually laid out version from the previous offering of this course.

## Table of Contents
- Part A -  BGR Circuit Understanding
- Part B - Analog Standard Cell (Stem Cell) Generation
- Part C - Layout Automation Playground
- Part D - Silicon Testing Results
- Part E - Project Proposal & Presentation
## Part A - BGR Circuit Understanding
### A1. Current vs Voltage relationship of diode

![diode](https://github.com/Li-Yueting/aloe-sky130/blob/main/images/diode.png)

$I =I_S \cdot\left(e^{\frac{q \cdot V_f}{k \cdot T}}-1\right) \cong I_S \cdot e^{\frac{q \cdot V_f}{k \cdot T}} \mid V_f \gg \frac{k \cdot T}{q}$

$V_f = V_T \cdot \ln\left(\frac{I}{I_S}\right)$
### A2. Get to know Bandgap Reference (BGR) Voltage Circuit
Abstraction:
- We want a voltage generation circuit, which is independent of temperature. 
- **Idea 1**: target_voltage = PTAT_voltage + CTAT_voltage
(PTAT: proportional to absolute temperature; CTAT: conversely proportional to absolute temperature) <br>
 **[Idea 2](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=760378)**: target_voltage = R * (PTAT_current + CTAT_current)   
 Here we use  **Idea 2**.

### A3. Simplified BGR Circuit Schematic (comparator abstraction)
![simplied-bgr](https://github.com/Li-Yueting/aloe-sky130/blob/main/images/simplified-BGR.png)  
  
Conditions:  
(1)	Va = Vb  
(2)	Sizes of PMOS P1, P2, P3 are the same  
(3)	R1 = R2     
  
Then:  
(1)	I1 = I2 = I3 (current mirror banks)  
(2)	I1b = I2b  
(3)	I1a = 12a  
(4)	-Vb = Vf2 + dVf = Vf1 = -Va  
(5) $d V_f=V_{f 1}-V_{f 2}=V_T \cdot \ln\left(\frac{I}{I_s}\right)-V_T \cdot \ln\left(\frac{I}{N \cdot I_s}\right)=V_T \cdot \ln (N)$    
(6)	\mathrm{I} 2 \mathrm{a} = dVf/R3  
(7)	\mathrm{I} 2 \mathrm{b} = Vf1/R2  
(8)	$\mathrm{I}3 = \mathrm{I}2 = \mathrm{I}2\mathrm{a} + \mathrm{I}2b$   
(9) $V_{ref}=\mathrm{R} 4 \cdot \mathrm{I}3=\mathrm{R}4 \cdot\left(\frac{V_{f 1}}{R 2}+\frac{d V_f}{R 3}\right)=\mathrm{R} 4 \cdot(\mathrm{I} 2 \mathrm{a}+\mathrm{I} 2 \mathrm{b})$, where I2a is PTAT current and I2b is CTAT current. 


## Part B - Analog Standard Cell (Stem Cell) Generation

## Part E - Project Proposal & Presentation
Our aloe-sky130 project proposal & the overview presentation is [here](https://drive.google.com/drive/folders/1wuhCuDhPMV9OHajH3ZFC1K35qJaZ7o5d?usp=sharing)
## Running codes
### Step 0 - Environment Setup 
Log into farmshare follow the [instruction here, watching the video is recommended](https://ee.stanford.edu/student-resources/it-resources/ee-instructional-computing-resources)  <br>
Source singularity environment by typing: <br>
``` 
$ /farmshare/home/classes/ee/admin/software/bin/centos.sh 
``` 
Then:
``` 
$ git clone https://github.com/Li-Yueting/aloe-sky130.git 
$ cd aloe-sky130
$ source setup.csh  
```
### Step 1 - Build Stem Cell Library
``` 
$ cd ./stem_cell_generator 
$ sh run_generator.sh  
```
### Step 2 - Run PnR Optimization

## Play around toy examples (skywater130-analog-flow using mflowgen [4])
[inverter](./inverter) <br>
[ring oscillator](./ringosc) 
## Reference 
 For the BGR part, we referred [bandgapReferenceCircuit](https://github.com/johnkustin/bandgapReferenceCircuit). In the layout part, some of the tcl codes referred [open-pmic](https://github.com/westonb/open-pmic ).

[4] https://github.com/mflowgen/mflowgen
## Contact
Yueting Li: lyt1314@stanford.edu <br>
Xingyu Ni: xingyuni@stanford.edu
