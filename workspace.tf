/*
resource "aws_instance" "my_instances" {
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = lookup(var.instance_type, terraform.workspace)
  #instance_type = var.instance_type
}
#export TF_VAR_instance_type="c5.large" --> run it to set "instance_type" enviromental variable in your current workspace
variable "instance_type" {
  type = map(any)
  default = {
    default = "t2.micro"
    prod    = "t2.large"
    stage   = "t2.small"
    test    = "t2.nano"
  }
}
*/
