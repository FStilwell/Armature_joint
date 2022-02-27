# Armature_joint
This repository serves as a location for relevant work regarding the Armature Joint module as my Level 7 Engineering Development Project at WelTec.



## Overview

In-depth details on the project can be found in the "project_report.pdf" file in the "documentation" folder.

### Mechanical Structure

The solidworks 3D files for the joint modules can be found in the "Mechanical_structure" folder. The solidworks files are quite messy with unorganised links in the model. Therefore, I would recommend that the concepts would be used rather than building directly from the solidworks files.

The details behind my thinking with the mechanical structure can be  found in the project report under the "5. Project Design/methodology" section.

### Electronics

All the electronics files and information are found under the "PCB" folder. More in-depth details on the electronics are found in the project report under the "5. Project Design/methodology" section.

#### Rework and test info

A document with the test info for each of the boards is found under the PCB/Board_testing directory. There are a few LEDs that were placed incorrectly and there's a design error with the reset button.

### Software

The software that I worked on is found under SDKs/nRF5_SDK_14.2.0_17b948a/examples/my_examples. They are Segger Embedded Studio project files. There are two programs that I think might be useful which are the blinky projects below.

A blink program is found under SDKs/nRF5_SDK_14.2.0_17b948a/examples/my_examples/Armature_joint_blinky_4-working/

A BLE blink program is found under SDKs/nRF5_SDK_14.2.0_17b948a/examples/my_examples/ble_app_blinky-working/

#### Configuring projects to work with the Armature boards

A guide I wrote for configuring the Segger Embedded Studio example projects to work with the armature boards can be found at Documentation/Modifying_SDK_SES_examples_for_Armature.pdf

#### Programming the boards

Using the Segger J-Link Edu Mini and a custom ribbon cable with a 6 pin header, I was programming the boards using the native Segger Embedded Studio toolchain. The header is connected to to the board as shown in the image below.

![debugger_connection.png](https://github.com/FStilwell/Armature_joint/blob/main/Documentation/images/debugger_connection.png?raw=true)
