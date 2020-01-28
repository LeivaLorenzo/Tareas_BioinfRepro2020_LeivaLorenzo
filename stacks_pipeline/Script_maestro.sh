#!/bin/bash
# "script" maestro que corre cada uno de los scripts
# Lorenzo Leiva Araya
# Enero 27, 2020 

### 1) Align with GSnap and convert to BAM
chmod +x 1_convert_to_BAM.sh
./1_convert_to_BAM.sh

### 2) Run Stacks on the gsnap data; the i variable will be our ID for each sample we process.
chmod +x 2_Run_stacks.sh
./2_Run_stacks.sh

### 3) Use a loop to create a list of files to supply to cstacks.
chmod +x 3_Create_a_list.sh
./3_Create_a_list.sh

### 4) Build the catalog; the "&>>" will capture all output and append it to the Log file.
chmod +x 4_Build_the_catalog.sh
./4_Build_the_catalog.sh

### 5) Calculate population statistics and export several output files.
chmod +x 5_Calculate.sh
./5_Calculate.sh


