resource "helm_release" "app" {
  name       = var.namespace
  chart      = "${path.module}/nginx"
  namespace  = var.namespace


  depends_on = [kubernetes_namespace.example]
}