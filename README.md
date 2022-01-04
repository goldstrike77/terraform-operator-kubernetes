![](https://img.shields.io/badge/terraform-kubernetes-green.svg?logo=appveyor&style=for-the-badge)

>__Please note that the original design goal of this operator was more concerned with the testing and verification, and therefore are only suitable for testing and development purposes, SHOULD NOT BE used in production environments. The author does not guarantee the accuracy, completeness, reliability, and availability of the operator content. Under no circumstances will the author be held responsible or liable in any way for any claims, damages, losses, expenses, costs or liabilities whatsoever, including, without limitation, any direct or indirect damages for loss of profits, business interruption or loss of information.__

>__请注意，该操作员的原始设计目标更关注测试和验证，因此仅适用于测试和开发目的，不应在生产环境中使用。作者不对操作员内容之准确性、完整性、可靠性、可用性做保证。在任何情况下，作者均不对任何索赔，损害，损失，费用，成本或负债承担任何责任，包括但不限于因利润损失，业务中断或信息丢失而造成的任何直接或间接损害。__

#### An Operator extends Kubernetes to automate the management of the entire life cycle of a particular application. Operators serve as a packaging mechanism for distributing applications on Kubernetes, and they monitor, maintain, recover, and upgrade the software they deploy.

#### Environment variables
```hcl
export TF_DATA_DIR="$HOME/.terraform_k8s"
export CONSUL_HTTP_SSL_VERIFY=false
export CONSUL_HTTP_SSL=true
export CONSUL_HTTP_TOKEN=6c397954-c993-4710-95bd-ce4ae34186a6
export TERRAGRUNT_DOWNLOAD=/tmp
```

#### By default, HashiCorp Terraform using kubeconfig access and authentication file named config in the $HOME/.kube directory.
#### Kubernetes cluster as below
```hcl
CURRENT   NAME                       CLUSTER   AUTHINFO
          kubernetes-admin@central   central   central
          kubernetes-admin@norther   norther   norther
          kubernetes-admin@souther   souther   souther
```

#### Requirements
| Name | Version |
|------|---------|
| [terraform](https://github.com/hashicorp/terraform) | >= 0.14.11 |
| [terragrunt](https://github.com/gruntwork-io/terragrunt) | >= 0.35.13 |

#### Providers
| Name | Version |
|------|---------|
| hashicorp/kubernetes | >= 2.7.1 |
| hashicorp/helm | >= 2.4.1 |

#### Running
```hcl
terragrunt run-all plan --terragrunt-parallelism 1
terragrunt run-all apply --terragrunt-parallelism 1
```