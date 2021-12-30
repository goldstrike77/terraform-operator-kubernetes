variable "deploy_spec" {
  default = {
    namespace = {
      name = "kube-event"
      annotations = {}
      labels = {}
    }
    helm = {
      kubernetes-event-exporter = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/kubernetes-event-exporter-1.2.8.tgz"
        version = "1.2.8"
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