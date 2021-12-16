variable "deploy_spec" {
  default = {
    namespace = {
      name = "ingress-nginx"
      annotations = {}
      labels = {}
    }
    helm = {
/*
      ingress-nginx = {
        repository = "https://kubernetes.github.io/ingress-nginx"
        chart = "ingress-nginx"
        version = "4.0.12"
        values = "ingress-nginx.yaml"
      }
*/
      nginx-ingress-controller = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "nginx-ingress-controller"
        version = "9.0.9"
        values = "nginx-ingress-controller.yaml"
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
