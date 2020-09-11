terraform {
  required_version = ">0.12.6"
  backend "s3" {
    bucket         = "ado-bucket-seed"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-locks"
    encrypt        = true
  }
}
