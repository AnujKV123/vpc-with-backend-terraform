variable "tag-map-nested" {
  type = map(any)
}

variable "subnet" {
  type = map(any)
}

variable "tag-Owner" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "availability_zone" {
  type = string
}