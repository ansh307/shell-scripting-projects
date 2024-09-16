#!/bin/bash 

##########################
#
#Author : Ansh
#About : Testing shell scripting and its commands
#created on : 16-9-24
#version : v1
#
##########################

echo "hello world"

set -x 

echo "number of cpus"
nproc

echo "disk details"
df 

echo "memory details"
free

echo "all combinations"
top

echo "running processes details" 
pd -ef

