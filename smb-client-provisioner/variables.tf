variable "deploy_spec" {
  default = {
    namespace = {
      name = "default"
      annotations = {}
      labels = {}
    }
    secret = {
      smbcreds = {
        annotations = {}
        labels = {}
        type = "kubernetes.io/basic-auth"
        data = {
          username = "smbuser"
          password = "Passw0rd"
        }
      }
    }
    helm = {
      csi-driver-smb = {
        repository = "https://raw.githubusercontent.com/kubernetes-csi/csi-driver-smb/master/charts"
        chart = "csi-driver-smb"
        version = "1.5.0"
        values = "csi-driver-smb.yaml"
      }
    }
    storageclass = {
      smb-client = {
        annotations = {}
        labels = {}
        storage_provisioner = "smb.csi.k8s.io"
        reclaim_policy = "Retain"
        parameters = {
          "source" = "//dem-p-inf-oss01.node.dc01.local/smb"
          "csi.storage.k8s.io/node-stage-secret-name" = "smbcreds"
          "csi.storage.k8s.io/node-stage-secret-namespace" = "default"
        }
        volume_binding_mode = "Immediate"
        allow_volume_expansion = true
        mount_options = ["dir_mode=0777", "file_mode=0640", "uid=1001", "gid=1001"]
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
