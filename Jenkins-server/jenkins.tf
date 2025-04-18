resource "aws_instance" "ec2_instance" {
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.security_group.id]
  instance_type          = "t3.small"

  user_data = file("jenkins.sh")
  tags = {
    Name    = "Jenkins"
  }
}

resource "aws_security_group" "security_group" {
  name        = "allow_all"
  description = "Allow all inbound traffic and all outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}

output "jenkins_ip" {
  value       = aws_instance.ec2_instance.public_ip
}