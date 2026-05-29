terraform_binary = "tofu"

remote_state {
    backend = "s3"

    config= {
      bucket = "raju-opentofu-state-dev"
      key = "dev/vpc/terraform.tfstate"
      region = "us-east-1"
      encrypt = true
      dynamodb_table = "terraform-locks"
    }
}

generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite"
    
    contents = <<EOF
  provider "aws" {
    region = "us-east-1"
  }  
  EOF
}

