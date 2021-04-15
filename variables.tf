variable "aws_access_key" {
  description = "The access key"
  type        = string
}

variable "aws_secret_key" {
  description = "The secret key"
  type        = string
}

variable "region" {
  default = "us-east-2"
}

variable "cluster_name" {
  default = "todolist_cluster"
}
