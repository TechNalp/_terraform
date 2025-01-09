variable "project_id" {
  description = "project id"
  type = string
}

variable "region" {
  description = "region"
  type = string
}

variable "zone" {
  description = "zone"
  type = string
}

variable "private_key_location" {
  description = "private key location"
  type = string
}

variable "access_token_target_service_account" {
  description = "service account email who will be get access token"
  type = string
}

variable "docker_registry_address" {
  description = "the address of the docker registry"
  type = string
}