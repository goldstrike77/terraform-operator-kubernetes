variable "deploy_spec" {
  default = {
    namespace = {
      name = "vector"
      annotations = {}
      labels = {}
    }
    helm = {
      vector-agent = {
        repository = "https://helm.vector.dev"
        chart = "vector-agent"
        version = "0.19.1"
        values = "vector-agent.yaml"
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