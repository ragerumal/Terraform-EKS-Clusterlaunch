
variable "cluster_name" {
type = string
default = "eks-demo-terraform-rag"
}

variable "cluster_version" {
type = string
default = "1.28"
}

variable "ami_release_version" {
type = string
default = "1.28"
}

variable "vpc_cidr" {
type = string
default = "172.2.0.0/16"
}
