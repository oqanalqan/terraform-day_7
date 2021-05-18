resource "aws_instance" "imported_ec2" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0999d6701f9f56139" ]
  key_name = "project"
  subnet_id = "subnet-00697c4fe8ced224f"
  tags = {
    "Name" = "import"
  }
}

#terraform import aws_instance.imported_ec2 i-0395b599cec14d9ea --> this command imports manually created instance from aws