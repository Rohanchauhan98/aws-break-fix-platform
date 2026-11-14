output "alb_dns" {
  value = try(aws_lb.app[0].dns_name, "compute disabled")
}

output "bucket" {
  value = aws_s3_bucket.lab.bucket
}

output "vpc_id" {
  value = aws_vpc.main.id
}