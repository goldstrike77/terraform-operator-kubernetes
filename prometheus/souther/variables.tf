variable "deploy_spec" {
  default = {
    namespace = {
      name = "monitoring"
      annotations = {}
      labels = {}
    }
    helm = {
      kube-prometheus = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "kube-prometheus-stack"
        version = "30.0.1"
        values = "kube-prometheus-stack.yaml"
      },
      kube-state-metrics = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "kube-state-metrics"
        version = "4.4.0"
        values = "kube-state-metrics.yaml"
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