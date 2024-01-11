provider "aws" {
    region = "us-east-1"
    access_key = "AKIA2PQ7KJFJM4365Y4M"
    secret_key = "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"
}

resource "aws_instance" "my-first-sever" {
  ami           ="${0014ce3e52359afbd}"
  instance_type ="t3.micro"

  tags ={
    Name =""
  }

  # ...
}
