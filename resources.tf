resource "aws_instance" "map" {
  for_each = local.instance_settings

  instance_type = each.value.instance_type
  ami           = each.value.ami
  key_name      = each.value.key_name
  subnet_id     = each.value.subnet_id
  tags          = local.instance_tags
}