# module "gcp" {
#   source = "../modules/gcp"

#   project_id = var.project_id
#   private_key_location = var.private_key_location
#   region = var.region
#   zone = var.zone
  
# }

module "docker" {
  source = "../modules/docker"
  
  project_id = var.project_id
  private_key_location = var.private_key_location
  region = var.region
  zone = var.zone
  

  access_token_target_service_account = var.access_token_target_service_account
  docker_registry_address = var.docker_registry_address
}


module "k8s" {
  source = "../modules/k8s"

  project_id = var.project_id
  private_key_location = var.private_key_location
  region = var.region
  zone = var.zone

  path_to_manifests = var.path_to_manifests
  pvc_manifest = var.pvc_manifest
  deployment_manifests = var.deployment_manifests
  service_manifests = var.service_manifests
}