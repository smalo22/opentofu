provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0bb84b8ffd87024d8" // AMI de Amazon Linux 2 como ejemplo
  instance_type = "t2.micro" // Tipo de instancia

  provisioner "local-exec" {
    command = "sleep 60"
  }
}
