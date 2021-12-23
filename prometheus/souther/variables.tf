variable "deploy_spec" {
  default = {
    namespace = {
      name = "monitoring"
      annotations = {}
      labels = {}
    }
    helm = {
      kube-prometheus = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/kube-prometheus-6.5.3.tgz"
        version = "6.5.3"
        values = "kube-prometheus.yaml"
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