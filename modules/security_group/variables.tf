variable "vpc_id" {
   type = string
}

variable "project_name" {
    type = string
}

variable "ssh_allowed_cidrs" {
    type = list(string)
}