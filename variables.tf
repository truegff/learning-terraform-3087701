variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "variable" {
  type = number
  default = 0
  description = "value of variable"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI"
  type = object({
    name = string
    owner = string
  })
  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631"
  }
}

variable "environment" {
  description = "Name of the environment"
  type = object({
    name = string
    network_prefix = string
  })
  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min_size" {
  description = "Minimum size of the autoscaling group"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum size of the autoscaling group"
  type        = number
  default     = 2
}
