variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}

variable "resource_group_name" {
  default = "jenkins-terraform-rg"
}

variable "location" {
  default = "Canada Central"
}

variable "app_service_name" {
  default = "jenkins-tf-appservice"
}
