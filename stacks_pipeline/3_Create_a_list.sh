#!/bin/bash
### 3) Use a loop to create a list of files to supply to cstacks.

rc=$HOME/lorenzo/research/project

files=”sample_01
sample_02
sample_03”

samp=""
for file in $files
do
samp+="-s $src/stacks/$file ";
done
