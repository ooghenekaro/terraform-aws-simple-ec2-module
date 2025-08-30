data "aws_ami" "ubuntu" {
  most_recent = var.recent_ami

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = local.instance_type
  availability_zone = var.az
  security_groups   = var.sg  

  tags = var.tags
}
