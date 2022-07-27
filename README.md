# terraform-lm-lmc

## Deployment

### include following in your terraform script (say, `main.tf`)

```terraform
terraform {
  experiments = [module_variable_optional_attrs]
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
provider "kubernetes" {
  config_path = "~/.kube/config"
}

variable "namespace" {
  default     = "logicmonitor"
  description = "Kubernetes Namespace for installation (default \"logicmonitor\")"
  type        = string
}

resource "kubernetes_namespace" "ns" {
  metadata {
    name = var.namespace
  }
}
variable "accessID" {
  description = "Logicmonitor API Token ID"
  type        = string
}
variable "accessKey" {
  description = "Logicmonitor API Token Key"
  type        = string
}
variable "account" {
  description = "Logicmonitor Account Name (trimmed *.logicmonitor.com)"
  type        = string
}
variable "clusterName" {
  description = "Friendly cluster name"
  type        = string
}
variable "deploy-kube-state-metrics" {
  default     = true
  type        = bool
  description = "Set Flag to true to deploy Kube-state-metrics (default true)"
}
module "lmc" {
  depends_on                 = [kubernetes_namespace.ns]
  source                     = "vkumbhar94/lmc/lm"
  version                    = "0.1.0-alpha03"
  lm-container-configuration = {
    global = {
      accessID  = var.accessID
      accessKey = var.accessKey
      account   = var.account
    }
    argus = {
      clusterName = var.clusterName
    }
    kube-state-metrics = {
      enabled = var.deploy-kube-state-metrics
    }
  }
  name                 = "lm-container"
  lm_container_version = "1.0"
  namespace            = var.namespace
}
```

### input file: `lmc.local.tfbackend`

```terraform
accessID    = ""
accessKey   = ""
account     = "qauat01"
clusterName = ""
```

### Apply

- Initialise `terraform init -var-file=lmc.local.tfbackend`
- Once init successful, Apply `terraform apply -var-file=lmc.local.tfbackend`
