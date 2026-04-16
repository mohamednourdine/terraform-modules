output "alb_dns_name" {
  value       = aws_lb.web.dns_name
  description = "DNS name of the Application Load Balancer"
}

output "asg_name" {
  value       = aws_autoscaling_group.web.name
  description = "Name of the Auto Scaling Group"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "Security group ID of the ALB — useful for adding ingress rules from other resources"
}
