variable "AWS_ACCESS_KEY" {
  default = "AKIAW3MEB2X4RSKGJKXM"
}

variable "AWS_SECRET_KEY" {}
  
variable "AMIS" {
  type = map 
  default = {
        us-east-1 = "ami-0059b7cd9f67d8050"
        us-east-2 = "ami-068e036cab82122e7"
        us-west-1 = "ami-0454207e5367abf01"
        us-west-2 = "ami-0688ba7eeeeefe3cd"
  }
} 

variable "public_keys" {
  default = "lookup_key.pub"
}

variable "private_keys" {
  default = "lookup_key"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "AWS_REGION" {
    default = "us-east-1"
  
}