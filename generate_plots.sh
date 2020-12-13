#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate squeezebox
cd ~/git/guillaume/squeezebox
papermill '1 - EDA.ipynb' '1 - EDA - out.ipynb' -k python3
./publish.sh
