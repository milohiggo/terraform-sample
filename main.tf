terraform {
  required_version = ">= 0.12, < 0.15"
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0b9487791bf873774"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-US-EAST-2-01"
  }
}



