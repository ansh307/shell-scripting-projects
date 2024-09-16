#!/bin/bash

######################
#
#Author : Ansh
#About : to reterive all the Basic information from the Aws user account
#prerequist : aws cli configure with defined region
#version : v1
#createdAt : 16-9-24
#
######################


set -x
set -e
set -o pipefail

echo "Listing all the instances id in a particular region for a aws user"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "listing aws all the s3 buckets"
aws s3 ls

echo "listing all the users iam"
aws iam list-users

echo "listing all the lambda funcitions"
aws lambda list-functions
