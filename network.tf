data "aws_vpc" "this"{
  id = "vpc-381c8153"
}

resource "aws_security_group" "this" {
  name = "${var.prefix}-db-security-group"

  vpc_id = data.aws_vpc.this.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = []
  }

  tags = {
    Name = "${var.prefix}-db-security-group"
  }
}