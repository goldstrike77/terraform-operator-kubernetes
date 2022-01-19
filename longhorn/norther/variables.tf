variable "deploy_spec" {
  default = {
    namespace = {
      name = "longhorn-system"
      annotations = {}
      labels = {}
    }
/*
Generate a basic auth.
USER=admin; PASSWORD=password; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})"
*/
    secret = {
      basic-auth = {
        annotations = {}
        labels = {}
        type = "Opaque"
        data = {
          auth = "admin:$apr1$sdfvLCI7$L0iMWekg57WuLr7CVFB5f."
        }
      }
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