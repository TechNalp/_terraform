resource "kubernetes_manifest" "deployment" {
  for_each = toset(var.deployment_manifests)
  
  manifest = merge(yamldecode(file("${var.path_to_manifests}/${each.value}")),{metadata = merge({namespace = "default"}, yamldecode(file("${var.path_to_manifests}/${each.value}")).metadata)})
}