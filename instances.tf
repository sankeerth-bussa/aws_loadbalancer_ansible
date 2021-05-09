provider "aws" {
	region="us-east-1"
	profile="default"
}

resource "aws_instance" "lb" {

	ami             = "ami-0d5eff06f840b45e9"
	instance_type   = "t2.micro"
	key_name        = "educate_key_sankeerth"
	security_groups = [ "launch-wizard-1" ]

	tags = {
		Name = "LB"
		Role = "LoadBalancer"
	}
}


resource "aws_instance" "server" {

	count =3

        ami             = "ami-0d5eff06f840b45e9"
        instance_type   = "t2.micro"
        key_name        = "educate_key_sankeerth"
	security_groups = [ "launch-wizard-1" ]

        tags = {
                Name = "server"
                Role = "Server"
        }
}

