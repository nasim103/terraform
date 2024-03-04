# Create Security Group
resource "aws_security_group" "allow_ssh" {
  vpc_id = aws_vpc.myvpc1.id
  name = "allow-ssh"
  description = "Allow ssh from instance"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = "0.0.0.0/0"
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = "0.0.0.0/0"
  }

  tags = {
    name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_mariadb" {
  vpc_id = aws_vpc.myvpc1.id
  name = "allow_mariadb"
  description = "Allow Mariadb using instance security group"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [aws_security_group.allow_ssh.id]
  }

  tags = {
    name = "mariadb"
  }
}
