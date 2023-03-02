provider "aws" {
    region = "us-west-2"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0735c191cf914754d"
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Jenkin-CICD-Instance"
  }
}
