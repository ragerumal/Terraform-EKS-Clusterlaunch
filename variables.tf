
variable "cluster_name" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "cluster_version" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "ami_release_version" {
  type = object({
    public_path = string
    content_version = number
  })
}
