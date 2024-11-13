BCD to Gray Code and Gray Code to BCD Converter

This project focuses on designing and implementing a BCD (Binary-Coded Decimal) to Gray Code Converter and the reverse Gray Code to BCD converter. The project demonstrates the importance of encoding and decoding mechanisms in digital communication, especially for error reduction in data transitions. Developed in Verilog, this project was implemented on an FPGA, specifically the Boolean Board with a Xilinx Spartan-7 XC7S50-CSGA324-1 FPGA, as part of a Logic Circuit Design course project.
Table of Contents
Introduction
Objective
Design Overview
    Block Diagram
    Modules
Hardware and Software Requirements
Results and Simulations
Conclusion and Future Scope
References

Introduction

Binary-Coded Decimal (BCD) and Gray Code are encoding methods used in digital systems. Gray Code is particularly useful in reducing errors in state transitions, making it relevant in areas such as analog-to-digital converters and rotary encoders. This project implements both a BCD-to-Gray Code conversion and the reverse Gray Code-to-BCD conversion, showcasing the encoding and decoding processes in communication systems.

Objective
    To design a converter that can change BCD to Gray Code and vice versa.
    To implement and verify this conversion on an FPGA using Verilog, ensuring accurate and error-free conversions.

Design Overview

Block Diagram

![1731460699561](https://github.com/user-attachments/assets/6ca6f2a2-2ab8-4d82-9542-31ae1dc6733e)

The block diagram illustrates the inputs (BCD/Gray code), mode selection to choose the conversion type, the conversion logic, and the output. The mode determines whether the circuit will perform BCD-to-Gray or Gray-to-BCD conversion.

Modules
    BCD to Gray Code Converter: Converts a 4-bit BCD input to its Gray code equivalent.
    Gray Code to BCD Converter: Converts a 4-bit Gray code input back to its BCD equivalent.

The modules are designed using Verilog and allow seamless switching between encoding and decoding modes.

Hardware and Software Requirements

Hardware
    FPGA Development Board: Boolean Board with Xilinx Spartan-7 (XC7S50-CSGA324-1)
    Built-in Switches and LEDs: Used for input and output visualization
    USB Power Supply: Powered via USB from the programming device (laptop)

Software
    Verilog HDL for coding the modules
    Icarus Verilog for simulation
    GTKWave for waveform analysis
    Vivado IDE for FPGA synthesis and implementation

Results and Simulations
    The Verilog code was tested and simulated in Icarus Verilog, with waveforms analyzed in GTKWave.
    Simulation Results: The output matches the expected Gray code for BCD inputs and vice versa.
    FPGA Implementation: The design was successfully implemented on the Boolean Board. Input switches controlled the BCD/Gray data, while LEDs displayed the converted output.


Conclusion and Future Scope

This project effectively demonstrates the conversion between BCD and Gray Code using Verilog on an FPGA, emphasizing the importance of encoding methods in reducing transition errors. Future work could explore:
    Extending the converter to handle more bits or additional code formats.
    Adding more efficient error-checking mechanisms to further enhance reliability.

References
    Morris Mano, Digital Logic and Computer Design,.
    EDA Playground: https://www.edaplayground.com
    Boolean Board Documentation https://www.realdigital.org/
