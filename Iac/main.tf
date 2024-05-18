resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "TerraformExampleInstance"
  }
}
output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.example.public_ip
}
variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-west-2"
}

variable "ami" {
  description = "The AMI ID for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key pair name"
  type        = string
}
