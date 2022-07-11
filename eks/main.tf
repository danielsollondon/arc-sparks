provider "aws" {
  region  = "us-west-2"
  access_key = $AWS_ACCESS_KEY_ID
  secret_key = $AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "app_server" {
  ami           = "ami-098e42ae54c764c35"
  instance_type = "t2.micro"

  tags = {
    Name = "testTf"
  }

}
