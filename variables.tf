variable "provider_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_ubuntu" {
  type    = string
  default = "ami-052efd3df9dad4825"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  default = "subnet-0020bfe1b9639463c"
}

variable "enviroment" {
  type = string
  default = "development"
}