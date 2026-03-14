locals {
  ami               = data.aws_ami.joindevops.id
  catalogue         = data.aws_ssm_parameter.catalogue_sg.value
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_id.value)[0]
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_id.value)
  ec2_tags = merge(var.common_tags, {
    environment = var.environment
  })
  backend_alb_listerner_arn=data.aws_ssm_parameter.backend_alb_listerner_arn.value
}