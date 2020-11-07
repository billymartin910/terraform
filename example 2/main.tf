provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDC+gxlvazvRFA4zzD4JkldYt63qZxnbOe1e4hGYc1P5NY6HzkXtpl8KQji6s56Y7bOrzzxvxL3gzyb0/QPJiaFWTyjOf0KMGfgqYRBTZyoLxO6kytQkHaHLfV5y7F4XCk8Zb3r1VQjwHeriSDDRWEWBgoXegGeifSk8c4vACSHymDjn9BZ+AbY5v7tlBLMycMK88P30hfZ3BI0H47JlcTnSzKOlFfqX1pKPIBmYBi+Jrpk9ffQq2x7k6fhob1O+rPCW164wZm4UknLlbvmT6u1qJ+5Nab43wCM087ic5cSfP3reVCMzBbsnd098cLd+6ZfuIQfZf7PFY3AkPyMri3Z ec2-user@Bastion"
}

resource "aws_instance" "example" {
  key_name      = "bastion"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
