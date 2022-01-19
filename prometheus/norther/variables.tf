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
        chart = "../../_chart/memcached-5.15.14.tgz"
        version = "5.15.14"
        values = "memcached.yaml"
      },
      thanos-store-memcached-bucket = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/memcached-5.15.14.tgz"
        version = "5.15.14"
        values = "memcached.yaml"
      },
      thanos-queryfrontend-memcached = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/memcached-5.15.14.tgz"
        version = "5.15.14"
        values = "memcached.yaml"
      },
      thanos = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/thanos-8.3.0.tgz"
        version = "8.3.0"
        values = "thanos.yaml"
      },
/*
      kube-prometheus = {
        repository = "https://charts.bitnami.com/bitnami"
        chart = "../../_chart/kube-prometheus-6.5.3.tgz"
        version = "6.5.3"
        values = "kube-prometheus.yaml"
      },
*/
      kube-prometheus = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "kube-prometheus-stack"
        version = "30.0.1"
        values = "kube-prometheus-stack.yaml"
      },
      kube-state-metrics = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "kube-state-metrics"
        version = "4.4.0"
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