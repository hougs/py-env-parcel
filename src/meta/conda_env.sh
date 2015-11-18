#!/bin/bash

CDH_CONDA_DIR=$PARCELS_ROOT/$PARCEL_DIRNAME

bash $TMP_DIR/AnacondaNoGPL-${VERSION}-${PLATFORM}.sh -b -p $CDH_CONDA_DIR/anaconda

if [ -n "${PYSPARK_PYTHON}" ]; then
  export PYSPARK_PYTHON=${CDH_CONDA_DIR}/anaconda/bin/python
fi

