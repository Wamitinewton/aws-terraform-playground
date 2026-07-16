resource "aws_security_group" "db_sg" {
  name        = "playground-db-sg"
  description = "Allow Postgres access from the playground EC2 instance only"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description     = "Postgres from EC2 instance security group"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.playground_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "playground-db-sg"
  }
}