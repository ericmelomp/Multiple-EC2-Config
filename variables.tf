variable "provider_region" {
  type    = string
  default = "?"
}

variable "ami_ubuntu" {
  type    = string
  default = "?"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  default = "?"
}

variable "enviroment" {
  type = string
  default = "development"
}