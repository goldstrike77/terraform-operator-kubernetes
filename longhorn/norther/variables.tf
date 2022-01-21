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
    customer: demo
    datacenter: dc01
    domain: local
    environment: dev
    group: norther
    project: cluster
spec:
  selector:
    matchLabels:
      app: longhorn-manager
  namespaceSelector:
    matchNames:
    - longhorn-system
  endpoints:
  - port: manager
    relabelings:
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_customer
      targetLabel: customer
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_environment
      targetLabel: environment
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_project
      targetLabel: project
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_group
      targetLabel: group
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_datacenter
      targetLabel: datacenter
    - sourceLabels:
      - __meta_kubernetes_endpoints_label_domain
      targetLabel: domain
YAML
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}