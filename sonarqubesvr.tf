resource "aws_instance" "sonarqube" {
  #count         = "2"
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  user_data     = file("sonarqube.sh")
  vpc_security_group_ids      = [var.security_group_id] 
  subnet_id                   = var.public_subnet_id    
  associate_public_ip_address = true

  tags = {
    Name = "sonarqube-svr"
  }
}
