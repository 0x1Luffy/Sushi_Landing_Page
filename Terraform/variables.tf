variable "aws_region" {
  description = "AWS region to deploy the instances"
  default     = "ap-south-1" # Default is optional
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  default     = "default" # Optional, replace if using a custom profile
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 3
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "key_name" {
  description = ""
  default     = "chetankesare" # Replace with your actual key pair name
}
