# meso-duet-settings
This repository contains the documents which are/were needed to enable the use of a Duet board on a multi-printhead 3D printer.

## postprocessing
### /gcodes/postprocessing_ws/_edit_retraction.py_
This script is used to alter the retraction command in order to disable/reduce the retaction on the rudder extruder.

A couple of variable should be mentioned in the G-code:
* **E_USED**: number of extruders used in tool.
* **MODE**: replacement mode.
  * **0**: remove all retraction.
  * **1**: E0:1:1:1 disable rudder retraction.
  * **2**: E1:1:1:0 disable rudder retraction.
  * **3**: Ex:1:1:1 reduce rudder retraction.
  * **4**: E1:1:1:x reduce rudder retraction.
* **E_RED**: reduction of rudder retraction when mode 3/4 is used.

The command should be followed by a space-character followed by the actual value:
<code> ;[COMMAND] SPACE [VALUE] </code>

## _C O N T E N T S_
Repository contents:

## _/configurations_
Contains the configuration files placed in the _/sys_-folder on the SD-card on the Duet.
* **/config full extruder** contains a _/sys_-folder generated by the [reprap-firmware configurator](https://configurator.reprapfirmware.org/)  
* **/manualconfig** contains the custom _config.g_-file with additional support files.

## _/gcodes_
Contains gcodes for testing and postprocessing scripts.
* **/postprocessing_ws** contains the post processing scipts and acts as a workspace for testing.

## _/init_SD_
Contains the contents of the SD-card on first contact.
* **/filaments** contains G-code macros for loading/unloading filaments.
* **/gcodes** contains G-codes for printing.
* **/macros** contains G-code macros that can be excuted via the web interface.
* **/sys** contains all G-code files which add to the basic functionality of the machine.
* **/System Volume Information** contains some sort of information file.
* **/www** spooky HTLM stuff.
