
provider "aws" {
    region = "ap-south-1"
   
}

resource "aws_instance" "secondEC2" {
    ami = "ami-0449c34f967dbf18a"
    instance_type = "t2.micro"
  
}

output "myip" {
  value = aws_instance.secondEC2.public_ip
}
