#!/bin/sh


SRC=`dirname "$(readlink -f "$0")"`

TARGET="$SRC/../target"

mkdir $TARGET

cd $TARGET
mkdir etc dev proc sys usr opt var tmp mnt bin sbin usr/bin usr/sbin lib root




