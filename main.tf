provider "aws" {
    region = "us-east-2"
}
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 3.0.0"
        }
    }
    required_version = ">=1.5"
}
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}

resource "aws_instance" "example" {
    ami           = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"        
}

module "terraform_lint" {
    source = "../terraform-lint-tag-module"
}
