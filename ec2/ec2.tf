resource "aws_instance" "db" {
    ami =  "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        name = "db"
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = " allowing ssh access"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        name = "allow_ssh"
        createdBy = "Nagarjuna"
    }
}
