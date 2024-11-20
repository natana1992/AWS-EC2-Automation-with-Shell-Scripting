AWS Daily Usage Report Automation
This project automates the daily generation of a usage report for AWS services including EC2, Lambda, S3, and IAM. The report is generated using a Shell script and AWS CLI, scheduled to run daily at 6 PM using a CronJob. The report is saved to an S3 bucket and provides insights into resource utilization and security configurations.

Features
EC2 Usage Report: Lists all running EC2 instances with details such as instance ID, type, state, and region.
Lambda Usage Report: Summarizes deployed Lambda functions, their configurations, and invocation counts.
S3 Bucket Report: Lists all S3 buckets, their region, and size usage.
IAM Report: Details active IAM users, roles, and policies.
Daily Automation: Scheduled via CronJob to run every day at 6 PM.
Storage in S3: Generated reports are automatically uploaded to a specified S3 bucket.
