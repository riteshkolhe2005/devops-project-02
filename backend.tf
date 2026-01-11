terraform {
  backend "s3" {
    bucket         = "riteshk-devops-pro-02-tfstate-001"
    key            = "devops-pro-02/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-lock"
    encrypt        = true
  }
}

