variable "scope_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage" {
  type = object({
    type             = string
    replication_type = string
    home_page        = string
    error_page       = string
  })
}