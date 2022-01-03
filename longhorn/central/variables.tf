variable "deploy_spec" {
  default = {
    namespace = {
      name = "longhorn-system"
      annotations = {}
      labels = {}
    }
    helm = {
      longhorn = {
        repository = "https://charts.longhorn.io"
        chart = "longhorn"
        version = "1.2.3"
        values = "longhorn.yaml"
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