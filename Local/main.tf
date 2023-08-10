terraform {
	  backend "s3" {
    bucket = "fg-bucket-02"
    key    = "dyuti/local/terraform.tfstate"
  }
}

resource "local_file" "foo" {
  content  = "Written By FlexDeploy!"
  filename = "/home/oracle/TerraformPOC/FD-02.log"
}
