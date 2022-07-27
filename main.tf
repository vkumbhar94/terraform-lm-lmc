terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "> 2.0.1"
    }
    template = {
      source = "hashicorp/template"
    }
  }
  #  module_variable_optional_attrs is available only after 0.15
  required_version = ">= 0.15"
}

locals {
  lmc_rendered = templatefile("${path.module}/templates/lmc-configuration.yaml", {
    lmc = local.lm-container-configuration
  })
}


resource "helm_release" "lmc" {
  name       = var.name
  chart      = "lm-container"
  repository = var.repository
  atomic     = true
  timeout    = var.timeout
  namespace  = var.namespace
  version    = var.lm_container_version
  values     = [
    local.lmc_rendered,
  ]
  reuse_values = var.reuse_values
}