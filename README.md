#### An Operator extends Kubernetes to automate the management of the entire life cycle of a particular application. Operators serve as a packaging mechanism for distributing applications on Kubernetes, and they monitor, maintain, recover, and upgrade the software they deploy.

#### Environment variables
```hcl
export TF_DATA_DIR="/home/oper/.terraform_k8s"
export KUBE_CONFIG_PATH=/home/oper/.kube/config
export CONSUL_HTTP_SSL_VERIFY=false
export CONSUL_HTTP_SSL=true
export CONSUL_HTTP_TOKEN=6c397954-c993-4710-95bd-ce4ae34186a6
export TERRAGRUNT_DOWNLOAD=/tmp
```

#### Requirements
| Name | Version |
|------|---------|
| [terraform](https://github.com/hashicorp/terraform) | >= 0.13.5 |
| [terragrunt](https://github.com/gruntwork-io/terragrunt) | >= 0.35.13 |

#### Providers
| Name | Version |
|------|---------|
| hashicorp/kubernetes | >= 2.6.0 |
| hashicorp/helm | >= 2.4.1 |

#### Running
```hcl
terragrunt run-all plan --terragrunt-parallelism 1
terragrunt run-all apply --terragrunt-parallelism 1
```
