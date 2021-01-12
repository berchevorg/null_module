variable "dummy" {
  default = "georgi"
}

module "null" {
  source = "../module"
  dummy = var.dummy
}
