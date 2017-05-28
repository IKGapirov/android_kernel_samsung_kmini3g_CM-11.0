#!/bin/bash

make -C $(pwd) O=output msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8228-sec_atlantic3geur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j3 -C $(pwd) O=output

cp output/arch/arm/boot/zImage output/arch/arm/boot/boot.img-kernel

exit
