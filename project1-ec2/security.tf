resource "aws_security_group" "project1-sg" {
    vpc_id = aws_vpc.project1.id
    name = "allow-ssh"
    description = "Allow ssh and web port for project1"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
 
}