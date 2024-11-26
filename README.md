# AWS Monitoring Script

This project automates the process of gathering AWS resources' status and outputs it to a timestamped log file every day at 5 PM. The script retrieves the following AWS resources:
- **S3 Buckets**
- **Running EC2 Instances** (with Public IP and Status)
- **Lambda Functions**
- **IAM Users**

## Features
- Lists all S3 buckets.
- Lists EC2 instances with their public IP and status.
- Lists all running Lambda functions.
- Lists IAM users in the AWS account.
- Outputs the results to a timestamped log file every day at 5 PM.

## Prerequisites

Before running the script, ensure that you have the following:
- AWS CLI installed and configured with appropriate IAM credentials.
- `jq` installed (for parsing JSON output).
- A Unix-like system (e.g., Linux, macOS) or WSL on Windows.

### AWS CLI Setup

1. **Install AWS CLI**: [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
2. **Configure AWS CLI**: Run the following command to configure your AWS credentials.

   ```bash
   aws configure
