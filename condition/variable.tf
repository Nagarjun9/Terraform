variable "image_id" {
    type = string 
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "instance_name" {
    default ="db"
}