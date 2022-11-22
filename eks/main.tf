variable "access_key" { }
variable "secret_key" { }

provider "aws" {
  region  = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "app_server" {
  ami           = "ami-098e42ae54c764c35"
  instance_type = "t2.micro"

  tags = {
    Name = "testTf"
  }

  
}
