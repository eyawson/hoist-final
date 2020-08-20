# Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"

}

#add github org

resource "aws_iam_user" "engineer" {
  count = length(var.engineer_name)
  name  = var.engineer_name[count.index]
}

module "devserver" {
  source        = "./dev-servers"
  machine_image = "ami-02f147dfb8be58a10"
  machine_type  = "t2.micro"
  machine_key   = "udacityDevops"
}
