variable "deploy_spec" {
  default = {
    namespace = {
      name = "nfs-client-provisioner"
      annotations = {}
      labels = {}
    }
    helm = {
      nfs-client-provisioner = {
        repository = "https://charts.helm.sh/stable"
        chart = "nfs-client-provisioner"
        version = "1.2.11"
        values = "nfs-client-provisioner.yaml"
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