## Usage

```hcl
module "simple_ec2_instance" {
  source  = "ooghenekaro/simple-ec2-module/aws"
  version = "1.0.1" # Always pin the version for production use

  instance_type = "t2.micro"
  az            = "eu-west-2a"
  recent_ami    = true
  sg            = ["sg-12345678", "sg-87654321"]
  region        = "eu-west-2"
}
