resource "aws_instance" "devserver" {
  ami           = var.machine_image
  instance_type = var.machine_type
  key_name      = var.machine_key
}
