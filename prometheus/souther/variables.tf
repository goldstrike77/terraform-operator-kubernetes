variable "deploy_spec" {
  default = {
    namespace = {
      name = "monitoring"
      annotations = {}
      labels = {}
    }
    helm = {
      thanos-store-memcached-index = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/memcached-6.0.2.tgz"
        version = "6.0.2"
        values = "memcached.yaml"
      },
      thanos-store-memcached-bucket = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/memcached-6.0.2.tgz"
        version = "6.0.2"
        values = "memcached.yaml"
      },
      thanos-queryfrontend-memcached = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/memcached-6.0.2.tgz"
        version = "6.0.2"
        values = "memcached.yaml"
      },
      thanos = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/thanos-9.0.1.tgz"
        version = "9.0.1"
        values = "thanos.yaml"
      },
      kube-prometheus-stack = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "../../_chart/kube-prometheus-stack-30.2.0.tgz"
        version = "30.0.1"
        values = "kube-prometheus-stack.yaml"
      },
      kube-state-metrics = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "../../_chart/kube-state-metrics-4.4.1.tgz"
        version = "4.4.1"
        values = "kube-state-metrics.yaml"
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