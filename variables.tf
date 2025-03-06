variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  default     = "kal-demo"
}

variable "region" {
  type    = string
  default = "ap-northeast-2"

  description = "Enter the region to use for the environment. [Default : ap-northeast-2]"
}

variable "db_instance_type" {
  type    = string
  default = "db.t3.micro"

  description = "Enter the db.instance type. [Default : db.t3.micro]"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  default     = null
}

variable "db_engine" {
  type    = string
  default = "mysql"

  description = "Enter the db engine. [Default : mysql]"
}
