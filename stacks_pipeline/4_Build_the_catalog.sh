#!/bin/bash
### 4) Build the catalog; the "&>>" will capture all output and append it to the Log file.

rc=$HOME/lorenzo/research/project

files=”sample_01
sample_02
sample_03”

cstacks -g -p 36 -b 1 -n 1 -o $src/stacks $samp &>> $src/stacks/Log

for file in $files
do
sstacks -g -p 36 -b 1 -c $src/stacks/batch_1 \
-s $src/stacks/${file} \
-o $src/stacks/ &>> $src/stacks/Log
done
