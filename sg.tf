module "mysql_sg"{
    source = "git::https://github.com/durga98-dev/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MySQL instances"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}
