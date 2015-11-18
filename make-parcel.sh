#!/bin/bash
#
# This script downloads the version and platform of Anaconda
# modified to contain limited GPL code

# The version to build
VERSION=2.3.5
PLATFORM=Linux-x86_64
# CentOS/RHEL 6
LINUX_PLATFORM=el6

# Url to get Anaconda distribution from.
BASE_CONDA_URL=http://repo.continuum.io/archive/.nogpl/

CONDA_URL=${BASE_CONDA_URL}AnacondaNoGPL-${VERSION}-${PLATFORM}.sh
SRC_DIR=src
TARGET_DIR=ANACONDA-$VERSION

mkdir target

cp -r src target/$TARGET_DIR
cd target

curl -o $TARGET_DIR/AnacondaNoGPL-${VERSION}-${PLATFORM}.sh $CONDA_URL
tar cvvzf ${TARGET_DIR}.tar.gz $TARGET_DIR
mv ${TARGET_DIR}.tar.gz ${TARGET_DIR}-${LINUX_PLATFORM}.parcel
