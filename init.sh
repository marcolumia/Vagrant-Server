#!/usr/bin/env bash
#
# Run this script before `vagrant up`

configPath=.config

mkdir -p "$configPath"

cp -i stubs/config.yaml "$configPath/config.yaml"
cp -i stubs/after.sh "$configPath/after.sh"

echo "Configurations initialized!"
