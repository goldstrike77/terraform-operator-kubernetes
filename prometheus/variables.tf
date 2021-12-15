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
        chart = "kube-prometheus"
        version = "6.5.0"
        values = "kube-prometheus.yaml"
      },
      thanos = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "thanos"
        version = "8.2.2"
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