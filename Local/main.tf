resource "local_file" "foo" {
  content  = "Written By FlexDeploy!"
  filename = "/home/oracle/TerraformPOC/FD.log"
}
