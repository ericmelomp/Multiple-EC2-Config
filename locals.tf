#Fazendo o tratamento das váriaveis, colocando o valor nelas
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