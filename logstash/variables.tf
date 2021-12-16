variable "deploy_spec" {
  default = {
    namespace = {
      name = "logstash"
      annotations = {}
      labels = {}
    }
    helm = {
      logstash = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "logstash"
        version = "3.6.20"
        values = "logstash.yaml"
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
