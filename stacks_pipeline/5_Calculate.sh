#!/bin/bash
### 5) Calculate population statistics and export several output files.

rc=$HOME/lorenzo/research/project

files=”sample_01
sample_02
sample_03”

populations -t 36 -b 1 -P $src/stacks/ -M $src/popmap \
-p 9 -f p_value -k -r 0.75 -s --structure --phylip --genepop
