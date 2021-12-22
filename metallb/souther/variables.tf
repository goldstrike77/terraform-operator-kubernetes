variable "deploy_spec" {
  default = {
    namespace = {
      name = "metallb"
      annotations = {}
      labels = {}
    }
    helm = {
      metallb = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "metallb"
        version = "2.5.14"
        values = "metallb.yaml"
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