provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDne400izKJaMjX8PVx4ltzggjhoPpM0xW6dzpJrxa/xvO9MUNBxKf7ydCq8kt/3wUJls5xZk/ReTw037KjlNZ2UUux3jfRE8cQZkUhWTZpsRB+8xZvhzNVxxN3yh0qOTbd6ASLnotJ60gBFkdlD+BEiF0aKHJhLpk12bUUby1FhiBH+9/lar8siCwjjr/Njfc/WFC0dfiKucHqrWlkjXchxZNzYKkutMA++l0ZfAJCCuK8rjjDLkdhB3/hEOFuH7GEyIwb9si0PqYDd4LEyeAk/0RTuEDuwNjEsPae1oSSKrDSA3ciXyp/fJAiy/i2lhkA23lajOtxldHidMz4qLxd ec2-user@Bastion"
}
