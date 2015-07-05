#!/bin/bash

WHERE=`pwd`

TGZ_NAME="scaleimagelib-1.0.3.tgz"
DIR_NAME="scaleimagelib"
./sdk.sh

cd ..
tar -cvz --exclude=OLD --exclude=work --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd "$WHERE"
