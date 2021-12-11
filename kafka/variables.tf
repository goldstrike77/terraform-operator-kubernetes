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
        version = "14.5.0"
        values = "kafka.yaml"
      },
      kowl = {
        repository = "https://raw.githubusercontent.com/cloudhut/charts/master/archives"
        chart = "kowl"
        version = "2.1.0"
        values = "kowl.yaml"
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
