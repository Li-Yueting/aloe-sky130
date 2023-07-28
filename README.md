# aloe-sky130
This project ports an automatic analog layout generation tool called [aloe](https://ieeexplore.ieee.org/document/9524486) to work with SkyWater 130 nm technology. Aloe uses a digital place and route tool together with a genetic algorithm to meet different analog layout specifications. Using this tool, we generated several layouts for a bandgap voltage reference (BGR) circuit on this chip, and we compared these with a manually laid out version from the previous offering of this course.

## Table of Contents
- Part A -  BGR Circuit Understanding
- Part B - Analog Standard Cell (Stem Cell) Generation
- Part C - Layout Automation
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
