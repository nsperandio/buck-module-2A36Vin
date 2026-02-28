# Buck DC/DC Module [Imax=2A, Vinmax=36V, Vo=5V]
Simple DC/DC converter in an simple and usable form-factor for educational or hobbyist purposes - but still with decent EMI performance and efficiency.

>⚠️ **Work in Progress**  
This design is currently under development and has not yet been fully validated.


## Current Project Status

- [x] Basic schematic
- [x] PCB layout
- [ ] BOM 
- [ ] First prototype assembly
- [ ] Electrical validation
- [ ] Thermal characterization

## Overview
The design is based on the [LV14240](https://www.ti.com/product/LV14240) buck controller with integrated switch by Texas Instruments.

Layout is based on the "Application and Implementation" section of the datasheet.

![Buck PCB Render](/doc/render.png)


## Specifications
|Spec|Value|
|-|-|
|Topology | buck (non-synchronous!)|
|Input Voltage| 4 - 36 V|
|Output Voltage| 5 V |
|Maximum Output Current| 2 A |
| Switching frequency| 500 kHz|


## EMI Considerations

An LCR input filter is added to attenuate conducted emissions at the switching frequency. The filter's damping factor can be obtained thanks to the ESR of the bulk capacitor and the DCR of the inductor. If the parasitics are not high enough an additional resistor can be used. 
Modulus of the buck input impedance in green, modulus of the filter impedance in red:

<img width="989" height="566" alt="image" src="https://github.com/user-attachments/assets/6d8f6ff1-3754-4afb-9042-20d1f745e1e3" />

|Spec|Value|
|-|-|
|Input Inductance| 47 uH|
|Inductors DCR| 230 mOhm|
|Bulk Capacitor| 20 uF |
|Capacitor ESR| 40 mOhm|
|Resonant peak frequency| 4.5 kHz|


