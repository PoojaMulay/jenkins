terraform {
  backend "s3" {
    bucket = "test-app-jenkins"
    region = "us-east-1"
    profile = "my_default_profile_name"
    key = "s3://test-app-jenkins/test/terraform.tfstate"
  }
}
