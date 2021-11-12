resource "aws_lb" "sonjisu_alb" {
  name = "sonjisu-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.sonjisu_sg.id]
  subnets = [aws_subnet.sonjisu_puba.id,aws_subnet.sonjisu_pubc.id]

  tags = {
    "Name" = "sonjisu-alb"
  } 
}