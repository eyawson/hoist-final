# Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"

}

# TODO: add github org

resource "aws_iam_user" "engineer" {
  count = length(var.engineer_name)
  name  = var.engineer_name[count.index]
}

module "devserver" {
  source        = "./dev-servers"
  machine_image = "ami-02f147dfb8be58a10"
  machine_type  = "t2.medium"
  machine_key   = "devops"


}

resource "aws_instance" "example" {
  ami           = "ami-0a07be880014c7b8e"
  instance_type = "t3.medium"
  key_name      = "devops"
  security_groups = [
    "launch-wizard-1"
  ]
}
