#!/bin/bash

##
## A bash script wrapper that runs the transformers-musicgen server with conda

echo "Launching gRPC server for transformers-musicgen"


# Activate conda environment
source $CONDA_PREFIX/etc/profile.d/conda.sh
conda activate transformers-musicgen

# get the directory where the bash script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

python $DIR/transformers_server.py $@
