variable "deploy_spec" {
  default = {
    namespace = {
      name = "kubernetes-dashboard"
      annotations = {}
      labels = {}
    }
    helm = {
      kubernetes-dashboard = {
        repository = "https://kubernetes.github.io/dashboard"
        chart = "kubernetes-dashboard"
        version = "5.0.4"
        values = "kubernetes-dashboard.yaml"
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