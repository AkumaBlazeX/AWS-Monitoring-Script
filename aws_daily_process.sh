#!/bin/bash

# Enable debugging (optional, for troubleshooting)
set -x

# AWS S3: List all S3 buckets
echo "This is the Bucket list: $(aws s3 ls)"

# EC2 Instances: List Public IP and Status of running EC2 instances
echo "These are the instances running at the present:"
aws ec2 describe-instances \
    | jq '.Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddresses[] | {PublicIp: .Association.PublicIp, Status: .Status}'

# List Lambda functions
echo "These are the running Lambda functions at the present: $(aws lambda list-functions)"

# List IAM users
echo "These are the IAM user list: $(aws iam list-users)"
