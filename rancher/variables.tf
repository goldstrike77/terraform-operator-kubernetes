variable "deploy_spec" {
  default = {
    namespace = {
      name = "cattle-system"
      annotations = {}
      labels = {}
    }
    helm = {
      rancher = {
        repository = "https://releases.rancher.com/server-charts/stable"
        chart = "rancher"
        version = "2.6.2"
        values = "rancher.yaml"
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