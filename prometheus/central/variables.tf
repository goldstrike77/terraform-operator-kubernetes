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
      },
      thanos = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/thanos-8.2.5.tgz"
        version = "8.2.5"
        values = "thanos.yaml"
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