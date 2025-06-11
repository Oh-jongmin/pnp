terraform {
  backend "s3" {
    bucket         = "ojm-terraform-state-bucket"
    key            = "pnp/infrastructure/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

