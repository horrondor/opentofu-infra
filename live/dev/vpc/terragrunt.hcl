include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../modules/vpc"
}

inputs = {
    vpc_name = "dev-vpc"

    vpc_cidr = "10.0.0.0/16"

    public_subnets = {
        "public-1" = {
            cidr = "10.0.1.0/24"
            az = "us-east-1a"
        }

        "public-2" = {
            cidr = "10.0.2.0/24"
            az = "us-east-1b"
        }
    }

    private_subnets = {
      "private-1" = {
         cidr = "10.0.10.0/24"
         az = "us-east-1a"   
       }
       "private-2" = {
         cidr = "10.0.20.0/24"
         az = "us-east-1b"   
       }
    }    
}
