terraform {
  backend "s3" {
    bucket         = "purva-backend-config"
    key            = "mynew.tfstate"
    region         = "us-east-1"
    dynamodb_table = "purva-assignment-table"
  }

}
