terraform {
  required_providers {
    kubernetes = {
    source = "hashicorp/kubernetes"
    version = ">= 2.35.0"
  }
  }
}


provider "kubernetes" {
  host = "${module.gcp.kubernetes_cluster_host}"
  token = module.gcp.google_client_config.access_token
  cluster_ca_certificate = base64decode(
    module.gcp.kubernetes_cluster.master_auth[0].cluster_ca_certificate,
  )
}