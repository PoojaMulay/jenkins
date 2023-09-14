/*terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tf-state-bucket-demo"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "cicd-demo-table"
    encrypt        = true
  }
} */

terraform {
  backend "s3" {
    bucket         = "tf-state-bucket-demo"  
    key            = "terraform.tfstate" 
    region         = "us-east-1"        

    profile        = my_default_profile_name    

    encrypt        = true               
    dynamodb_table = "terraform-lock"   

  }
}
