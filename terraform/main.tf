provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
resource "aws_instance" "my-first-server" {
  ami           = "0014ce3e52359afbd"  # Replace with the correct AMI ID
  instance_type = "t3.micro"

  tags = {
    Name = "my-first-server"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-cloud-cruiser"
  acl    = "private"  

versioning {
    enabled = true
  }

  tags = {
    Name        = "cloud-cruiser"
    Environment = "Dev"
  }
}
