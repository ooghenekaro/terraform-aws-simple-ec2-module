## Sample Usage

```hcl
module "karo-dev" {
  source       = "github.com/ooghenekaro/simple-tf-module-ec2"
  instance_type = "t2.micro" # Please enter your instance type
  az           = "eu-west-2a" # Please enter your availability zone
  recent_ami   = true
  sg           = ["sg-12345678", "sg-87654321"] # Please enter a list of the security group names you want to use for your instance
  region       = "eu-west-2" # Please enter your region
}

