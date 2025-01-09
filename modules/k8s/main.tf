module "gcp" {
  source = "../gcp"

  project_id = var.project_id
  private_key_location = var.private_key_location
  region = var.region
  zone = var.zone
}