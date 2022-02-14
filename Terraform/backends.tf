terraform {
  backend "s3" {
    bucket         = "ct-sandbox-imca"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-lock"

  }
}
