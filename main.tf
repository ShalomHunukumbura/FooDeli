provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2PQ7KJFJM4365Y4M"
  secret_key = "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"
}

resource "aws_instance" "my-first-server" {
  ami           = "ami-06478978e5e72679a"   
  instance_type = "t3.micro"

  tags = {
    Name = "my-first-server"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-cloud-cruiser"

  acl = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "cloud-cruiser"
    Environment = "Dev"
  }
}