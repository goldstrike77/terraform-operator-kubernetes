variable "deploy_spec" {
  default = {
    namespace = {
      name = "ingress-nginx"
      annotations = {}
      labels = {}
    }
    helm = {
      ingress-nginx = {
        repository = "https://kubernetes.github.io/ingress-nginx"
        chart = "ingress-nginx"
        version = "4.0.12"
        values = "ingress-nginx.yaml"
      }
    }
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}
