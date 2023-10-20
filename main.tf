# Who is the cloud provider
provider "aws" {

# location of AWS
  region = var.aws-region

}
# To download required dependencies
# create a service/resource on the cloud - ec2 on AWS

resource "aws_instance" "tech254-alex-iac-test" {
   ami = var.web-app_ami_id
   instance_type = var.instance_type
   tags = {
     Name = var.id_name
   }

}
