#!/bin/sh
ROOTDIR=$(cd `dirname $0`; pwd)
TOOLCHAINSDIR=$ROOTDIR/mtk-toolchains
SRCDIR=$ROOTDIR/asuswrt-modx-next/release/src-ra-openwrt-4210

cd $TOOLCHAINSDIR
sudo ln -sf $(pwd)/toolchain-aarch64_cortex-a53+neon-vfpv4_gcc-5.4.0_glibc-2.24 /opt/
sudo ln -sf $(pwd)/lede-toolchain-mediatek-mt7629_gcc-5.4.0_musl-1.1.24_eabi.Linux-x86_64 /opt/
sudo ln -sf $(pwd)/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.24 /opt/
sudo ln -sf $(pwd)/toolchain-aarch64_cortex-a53_gcc-8.4.0_glibc /opt/
cd $(pwd)/toolchain-aarch64_cortex-a53+neon-vfpv4_gcc-5.4.0_glibc-2.24/lib
tar xvJf libc.a.tar.xz

cd $SRCDIR
make $1
