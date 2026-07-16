resource "aws_instance" "playground_instance" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.playground_sg.id]

  tags = {
    Name = "pulumi-playground-instance-tf"
  }
}