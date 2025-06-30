# 💻 Digital Systems Design Labs – VHDL & FPGA  
**Course:** COE 328 – Digital Systems  
**Institution:** Toronto Metropolitan University  
**Language:** VHDL  
**Tools:** VHDL, Quartus Prime, ModelSim, SignalTap, RTL Viewer, Intel FPGA (DE1/DE10-Lite), Pin Planner, Karnaugh Maps, Testbenches, State Diagrams

---

## 📘 Overview

This repository contains a series of lab-based projects focused on the design, simulation, and implementation of digital systems using **VHDL** and **FPGA technologies**. The labs span from fundamental logic design to the development of a functional **general-purpose processor**, offering practical exposure to modern digital design workflows.

All designs were created using **Quartus Prime** for synthesis, **ModelSim** for simulation, and deployed on **Intel FPGA** boards for hardware validation.

---

## 🧪 Lab Descriptions

### 🔹 Lab 1 – Introduction to CAD Tools  
Introduced digital design workflows using Quartus Prime and ModelSim. Implemented and simulated basic logic gates and circuits using VHDL.

### 🔹 Lab 2 – Function Implementation and Minimization  
Applied Boolean algebra and Karnaugh Maps to optimize combinational logic. Implemented minimized logic functions in VHDL and verified via simulation.

### 🔹 Lab 3 – Adder and Subtractor Unit  
Designed a 4-bit adder/subtractor unit with carry and borrow functionality. Implemented control logic to toggle between operations and validated results using testbenches.

### 🔹 Lab 4 – Design of a Simple General-Purpose Processor  
Developed a basic single-cycle processor in VHDL. Core components included:
- ALU with arithmetic/logic operations  
- Register file and program counter  
- Instruction decoder and control unit  
- Support for a custom instruction set

### 🔹 Lab 5 – Customized Finite State Machine  
Designed and implemented a Moore/Mealy-style finite state machine tailored for specific sequential control logic. Verified timing and state transitions through simulation and FPGA testing.

### 🔹 Lab 6 – General-Purpose Processor Implementation  
Completed integration and testing of the processor. Added instruction and data memory, expanded the instruction set, and deployed the full system on FPGA. Verified execution of basic programs in hardware.

---

### 🛠️ Technologies Used

- **VHDL** – RTL description for digital circuits and processor logic  
- **Quartus Prime** – Synthesis, implementation, pin planning, and device programming  
- **ModelSim** – Functional and timing simulation with waveform analysis  
- **SignalTap Logic Analyzer** – On-chip debugging and signal tracing  
- **Intel FPGA Boards** – Hardware validation (DE1, DE10-Lite, Cyclone IV)  
- **CAD Tools** – RTL viewer, schematic editor, truth table generator  
- **Design Techniques** – Karnaugh Maps, testbenches, FSM design, datapath schematics

---

## 🎯 Learning Outcomes

- combinational and sequential digital logic design  
- Gained proficiency in VHDL for hardware description  
- Built arithmetic and control logic units from the ground up  
- Designed and simulated a basic CPU architecture  
- Deployed and debugged real-time digital systems on FPGA hardware  
- Utilized advanced CAD tools for logic analysis and circuit optimization

---

## 📁 Project Structure

```
/Lab1_CAD_Tools/          – Basic logic gates and simulation setup  
/Lab2_Logic_Minimization/ – Optimized logic function implementations  
/Lab3_Adder_Subtractor/   – Arithmetic unit in VHDL  
/Lab4_Processor_Design/   – Core CPU components and datapath  
/Lab5_FSM/                – Finite State Machine implementation  
/Lab6_Processor_Final/    – Full processor integration and hardware testing  
/docs/                    – Architecture diagrams, state charts, and reports  
```

---

## 📌 Future Enhancements

- Add pipelining to the processor design  
- Expand the ISA with multiplication/division and I/O  
- Integrate UART/VGA for I/O communication  
- Implement interrupt handling  
- Add external memory interfaces

---
## ⚠️ Academic Integrity

All work adheres to **Toronto Metropolitan University’s Policy 60**. Reports are original, created for educational purposes, and demonstrate ethical academic conduct in accordance with course expectations.

---

© 2022 Hamza Malik


![cpgpu](https://user-images.githubusercontent.com/49215949/230212451-be755a9a-f83e-4d5e-98dc-de129d6e3314.jpg)
