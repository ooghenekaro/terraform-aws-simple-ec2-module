<~~~~~ Simple EC2 Module ~~~~~>


Sample usage:

module "karo-dev" {
  source = "github.com/ooghenekaro/simple-tf-module-ec2"
  instance_type = "Please enter your ami"
  az            = "Please enter your az£
  recent_ami    = true
  sg            = [Please enter a list of the sg names you want to use for your instance]
  region        = "Please enter your region"


}
