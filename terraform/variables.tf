variable "prefix" {
  type = string 
  default = "devsecops"
  description = "Prefix for all resources"
}
variable "location" {
  type = string
  default = "East US"
  description = "Azure region"
}
