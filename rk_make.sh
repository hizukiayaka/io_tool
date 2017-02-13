#! /bin/sh

TOP_DIR=$(pwd)
BUILDROOT_TARGET_PATH=$(pwd)/../../buildroot/output/target/

arm-linux-gcc -rdynamic -g -funwind-tables  -O0 -D_GNU_SOURCE -o  io io.c   -I$(pwd)

cp $TOP_DIR/io $BUILDROOT_TARGET_PATH/usr/bin/

echo "io is ready on buildroot/output/target/usr/bin/"
