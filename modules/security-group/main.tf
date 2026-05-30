resource "aws_security_group" "this" {
  name = var.sg_name
  description = var.sg_descriptiion
  vpc_id = var.vpc_id

  tags = {
    Name = 
  }

}

resource "aws_vpc_security_group_ingress_rule" "ingress" {
  


}