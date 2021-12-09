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
        version = "2.5.13"
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