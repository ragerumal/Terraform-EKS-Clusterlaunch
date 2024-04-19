
variable "cluster_name" {
  type = object({
    public_path = string
    content_version = number
  })
default = ["eks-demo-terraform-rag"]
}

variable "cluster_version" {
  type = object({
    public_path = string
    content_version = number
  })
default = ["1.28"]
}

variable "ami_release_version" {
  type = object({
    public_path = string
    content_version = number
  })
default = ["1.28"]

}
