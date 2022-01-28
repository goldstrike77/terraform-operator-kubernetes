variable "deploy_spec" {
  default = {
    namespace = {
      name = "metrics-server"
      annotations = {}
      labels = {}
    }
    helm = {
      metrics-server = {
        repository = "https://kubernetes-sigs.github.io/metrics-server"
        chart = "../../_chart/metrics-server-3.7.0.tgz"
        version = "3.7.0"
        values = "metrics-server.yaml"
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