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
| 2 | Web server timeout (security group) | [Report](runbooks/02-sg-timeout.md) |
| 3 | EC2 denied access to S3 (IAM policy typo) | [Report](runbooks/03-iam-s3-denied.md) |
| 4 | Disk full on EC2 (CloudWatch alarm) | [Report](runbooks/04-disk-full.md) |
| 5 | Web server timeout (missing internet route) | [Report](runbooks/05-missing-route.md) |
| 6 | ALB 504: unhealthy targets (security group chain) | [Report](runbooks/06-alb-504-unhealthy-targets.md) |
| 7 | Wrong health check path (ASG replacement loop) | [Report](runbooks/07-bad-health-check-path.md) |
| 8 | Private subnet lost internet (missing NAT route) | [Report](runbooks/08-missing-nat-route.md) |
## What I learned
(short notes, updated after each lab)
