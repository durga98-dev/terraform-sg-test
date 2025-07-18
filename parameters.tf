resource "aws_ssm_parameter" "mysql_sg_id" {
  name  = "/${var.project_name}/${var.environment}/mysql-sg-id"
  type  = "String"
  value = module.mysql_sg.sg_id
}