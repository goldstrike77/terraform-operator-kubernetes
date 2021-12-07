variable "deploy_spec" {
  default = {
    namespace = {
      name = "kafka"
      annotations = {}
      labels = {}
    }
    helm = {
      kafka = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "kafka"
        version = "14.4.3"
        values = "kafka.yaml"
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
