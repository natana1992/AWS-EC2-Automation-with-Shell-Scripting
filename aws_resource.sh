#!/bin/bash

###########################
# Author: Natan
# Date: 20th-Nov
#
# Version: v1
#
# This script will report the aws resource usage
############################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 Instance
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstancesID'
echo "Print list of EC2 Instances"
aws ec2 describe-instances > resourceTracker

# list Lambda 
echo "Print list of Lambda functions"
aws lambda list-functions > resourceTracker

# list IAM users
echo "Print list of IAM Users"
aws iam list-users > resourceTracker
