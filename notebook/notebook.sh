#!/bin/bash

#
# Start the notebook
#

cd $(dirname $0)

mkdir -p ~/.notebooks
mkdir -p ~/.notebooks/dataset
export DATASET_DIRECTORY=~/.notebooks/dataset
nohup python -m notebook --config notebook-config --allow-root > notebook.log 2>&1 &
tail -f notebook.log
