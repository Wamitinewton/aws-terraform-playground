resource "random_password" "db_password" {
  length           = 20
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_db_subnet_group" "playground_db_subnet_group" {
  name       = "playground-db-subnet-group"
  subnet_ids = data.aws_subnets.default.ids

  tags = {
    Name = "playground-db-subnet-group"
  }
}

resource "aws_db_instance" "playground_db" {
  identifier     = "playground-db"
  engine         = "postgres"
  engine_version = var.db_engine_version

  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  storage_type      = "gp3"

  db_name  = var.db_name
  username = var.db_username
  password = random_password.db_password.result

  db_subnet_group_name   = aws_db_subnet_group.playground_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  publicly_accessible = false
  multi_az            = false
  skip_final_snapshot = true
  apply_immediately   = true

  tags = {
    Name = "playground-db"
  }
}