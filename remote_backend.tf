terraform {
  backend "s3" {
    bucket = "okan-terraform-state-files"
    key    = "cloud-2021.tfstate"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "terraform-state-files" # this line prevents the state file to be updated by multiple users at the same time
    #you need to create a dynamodb table with an item named 'LockID' exactly
  }
}
