variable "sg_name" {
  type = string 
}

variable "sg_descriptiion" {
    type = string
}

variable "vpc_id" {
    type = string
}

varibale "sg_tags" {
    type = map(string)
    default = {}
}

variable "ingress_rules" {
    type = list(object({
        description = string
        from_port = number
        to_port = number 
        protocol = string 
        cidr_ipv4 = string 
    }))

variable "egress_rules" {
    type = list(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        cidr_ipv4 = string
    }))
}   
}