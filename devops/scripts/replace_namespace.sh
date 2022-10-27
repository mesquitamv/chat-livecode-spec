#!/bin/bash

set -e
set -x

ROOT=$1

cd $1

find -name "*.yml" -exec sed -in "s,PLACE_HOLDER_NAMESPACE,${NAMESPACE},g"  {} \;