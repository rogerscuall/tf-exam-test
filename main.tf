provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  count = 3
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

output "my_output" {
  value = aws_instance.example[*].id
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hallownest"
    workspaces {
      name = "tf-exam-test"
    }
  }
}