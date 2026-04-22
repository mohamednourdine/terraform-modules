variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum number of instances in the ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances in the ASG"
  type        = number
  default     = 2
}

variable "server_port" {
  description = "Port the web server listens on"
  type        = number
  default     = 8080
}

variable "health_check_path" {
  description = "Path the ALB uses for health checks"
  type        = string
  default     = "/"
}

variable "user_data" {
  description = "Shell script to run on instance launch. Installs and starts the application."
  type        = string
  sensitive   = true
}

variable "health_check_grace_period" {
  description = "Seconds the ASG waits before checking health on a new instance. Set high enough to cover your startup script."
  type        = number
  default     = 300
}

variable "min_healthy_percentage" {
  description = "Minimum percentage of healthy instances during a rolling update."
  type        = number
  default     = 50
}

variable "instance_warmup" {
  description = "Seconds to wait after an instance passes health checks before replacing the next one."
  type        = number
  default     = 120
}
