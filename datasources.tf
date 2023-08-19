data "aws_ami" "amzlinux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20230727.0-x86_64-gp2"] //amzn2-ami-kernel-5.10-hvm-2.0.20230727.0-x86_64-gp2,al2023-ami-*
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"]  //owner-amz23-137112412989 ,owner-amz2-137112412989
}
