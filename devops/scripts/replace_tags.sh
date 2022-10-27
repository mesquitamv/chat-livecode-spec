#!/bin/bash

set -e
set -x

ROOT=$1
SERVICE=${2^^}
TAG=$3

cd $1

find -name "*.yml" -exec sed -in "s,PLACE_HOLDER_${SERVICE}_TAG,${TAG},g"  {} \;
 