#!/bin/bash

export KERNELNAME=Nobita

export LOCALVERSION=hmp

export KBUILD_BUILD_USER=irfannim

export KBUILD_BUILD_HOST=funproject

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⏳ Memulai build ${DEVICES}..."

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -kernel


done

END=$(date +"%s")
 
DIFF=$(( END - START ))
