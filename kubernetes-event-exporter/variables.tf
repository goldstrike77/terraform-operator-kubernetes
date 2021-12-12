variable "deploy_spec" {
  default = {
    namespace = {
      name = "kube-system"
      annotations = {}
      labels = {}
    }
    helm = {
      kubernetes-event-exporter = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "kubernetes-event-exporter"
        version = "1.2.4"
        values = "kubernetes-event-exporter.yaml"
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