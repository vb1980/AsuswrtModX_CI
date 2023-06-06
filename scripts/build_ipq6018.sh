#!/bin/sh
ROOTDIR=$(cd `dirname $0`; pwd)
TOOLCHAINSDIR=$ROOTDIR/mtk-toolchains
SRCDIR=$ROOTDIR/asuswrt-ipq6018/release/src-qca-cypress

cd $TOOLCHAINSDIR
sudo ln -sf $(pwd)/openwrt-gcc520_musl.arm /opt/

cd $SRCDIR
make $1
