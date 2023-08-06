terraform {
	  backend "s3" {
    bucket = "fg-bucket-01"
    key    = "dyuti/unt/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "local_file" "foo" {
  content  = "Written By FlexDeploy!"
  filename = "/home/oracle/TerraformPOC/FD-01.log"
}
