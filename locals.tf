#You'll be not able to set automatically the creation of the instances according to the number of subnets you have
#We can only do it when using "count", it's not possible here. That's why you have to set a list with the subnets
#and use "[number]" to chooose the respective subnet; otherwise, you can simply insert the subnet_id.
locals {
  instance_settings = {
    "instance01" = {
      instance_type = var.instance_type
      ami           = var.ami_ubuntu
      key_name      = "key-ubuntu"
      subnet_id     = tolist(data.aws_subnet_ids.private_subnets.ids)[0]
    },
    "instance02" = {
      instance_type = var.instance_type
      ami           = var.ami_ubuntu
      key_name      = "key-ubuntu"
      subnet_id     = tolist(data.aws_subnet_ids.private_subnets.ids)[1]
    },
    "instance03" = {
      instance_type = var.instance_type
      ami           = var.ami_ubuntu
      key_name      = "key-ubuntu"
      subnet_id     = tolist(data.aws_subnet_ids.private_subnets.ids)[2]
    }
  }
}

locals {
  instance_tags = "terraform-instance-${var.enviroment}"
}