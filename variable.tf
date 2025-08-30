variable "instance_type" {
   type = string
   description = "We pass in our instance type here"
#   default  = "t3.micro"
}


variable "az" {
  type = string
  description = "az hahahaa"
#  default = "eu-west-2a"
 }


variable "recent_ami" {
  type = bool
#  default = true
}

variable "sg" {
  type = list(string)
#  default = ["launch-wizard-42", "security-group-for-outbound-nfs-d-qngkec1oe55k"]
}



variable "tags" {
  type = map(string)
  default = {
    Env  = "Dev"
    Managed_by  = "Terraform"
    Team = "Devops"
  }
}


variable "region" {
  type = string
}
