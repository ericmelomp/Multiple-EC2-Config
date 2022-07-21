data "aws_subnet_ids" "private_subnets" {
  vpc_id = "vpc-07846064f27eb2140"
#This filter goes according to the tags (key=type; value=private) in the subnets of my vpc.
  filter {
    name = "tag:type"
    values = ["private"]
  }
}

#Getting the subnets id according to the vpc and filter below.
output "private_subnets" {
  value = data.aws_subnet_ids.private_subnets.ids
}