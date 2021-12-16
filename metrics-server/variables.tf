variable "deploy_spec" {
  default = {
    namespace = {
      name = "kube-system"
      annotations = {}
      labels = {}
    }
    helm = {
/*
      metrics-server = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "metrics-server"
        version = "5.10.11"
        values = "metrics-server-bitnami.yaml"
      }
*/
      metrics-server = {
        repository = "https://kubernetes-sigs.github.io/metrics-server"
        chart = "metrics-server"
        version = "3.7.0"
        values = "metrics-server-sigs.yaml"
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