terraform {
  backend "s3" {

bucket  = "926804199839-terraform-states"
key     = "development/service-name.tfstate"
encrypt = true
region  = "ap-south-1"
dynamodb_table = "terraform-lock"
 }
}
