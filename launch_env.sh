#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate squeezebox
cd ~/git/guillaume/squeezebox
jupyter notebook &
