variable "deploy_spec" {
  default = {
    namespace = {
      name = "longhorn-system"
      annotations = {}
      labels = {}
    }
    helm = {
      longhorn = {
        repository = "https://charts.longhorn.io"
        chart = "longhorn"
        version = "1.2.3"
        values = "longhorn.yaml"
      }
    }
    manifest = <<YAML
apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor
metadata:
  name: longhorn
  namespace: longhorn-system
  labels:
    name: longhorn
spec:
  selector:
    matchLabels:
      app: longhorn-manager
  namespaceSelector:
    matchNames:
    - longhorn-system
  endpoints:
  - port: manager
YAML
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}