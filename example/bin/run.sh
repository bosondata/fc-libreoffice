#!/bin/bash
set -o xtrace

SCRIPT_DIR=`dirname -- "$0"`

source $SCRIPT_DIR/../.env

docker run --rm -v $(pwd):/code -v $(pwd)/tmp:/tmp \
    -e FC_ACCESS_KEY_ID=$FC_ACCESS_KEY_ID \
    -e FC_ACCESS_KEY_SECRET=$FC_ACCESS_KEY_SECRET \
    -e LIBREOFFICE_REGION=$LIBREOFFICE_REGION \
    -e LIBREOFFICE_BUCKET=$LIBREOFFICE_BUCKET \
    aliyunfc/runtime-nodejs8 --handler index.handler --initializer index.initializer