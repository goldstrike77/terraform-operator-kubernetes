variable "deploy_spec" {
  default = {
    namespace = {
      name = "kube-system"
      annotations = {}
      labels = {}
    }
    helm = {
      node-problem-detector = {
        repository = "https://charts.deliveryhero.io"
        chart = "node-problem-detector"
        version = "2.0.9"
        values = "node-problem-detector.yaml"
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