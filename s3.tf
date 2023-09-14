  backend "s3" {
    bucket = "tf-state-bucket-demo"
    key    = "global/s3/terraform.tfstate"
    region = "eu-central-1"
    profile = "my_default_profile_name"
  }
}
