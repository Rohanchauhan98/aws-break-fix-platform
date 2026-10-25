# aws-break-fix-platform

A multi-AZ web platform on AWS, built to practice deployment, IAM, monitoring, and troubleshooting. I deliberately break it and document how I diagnose each failure.

**Region:** ap-southeast-2 (Sydney)

## Architecture
(diagram goes here)

## What I'm building
- VPC with public and private subnets, ALB, Auto Scaling Group, RDS, S3
- Least-privilege IAM roles, no long-term access keys
- CloudWatch metrics, logs, alarms, and a dashboard

## Break-fix incident reports
| # | Failure | Report |
|---|---------|--------|
| 1 | S3 bucket policy lockout | [Report](runbooks/01-s3-lockout.md) |

## What I learned
(short notes, updated after each lab)
