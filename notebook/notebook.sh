#!/bin/bash

#
# Start the notebook
#

cd $(dirname $0)
TODAY=$(date +%Y_%m_%d)
LOGFILE=notebook_${TODAY}.log

mkdir -p ~/.notebooks
mkdir -p ~/.notebooks/dataset
export DATASET_DIRECTORY=~/.notebooks/dataset
nohup python -m notebook --config notebook-config --allow-root > ${LOGFILE} 2>&1 &
tail -f ${LOGFILE}
