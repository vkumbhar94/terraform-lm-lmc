variable "lm-container-configuration" {
  type = object({
    global = object({
      accessID  = optional(string)
      accessKey = optional(string)
      account   = optional(string)
    })
    argus = object({
      accessID    = optional(string)
      accessKey   = optional(string)
      account     = optional(string)
      clusterName = string
    })
    collectorset-controller = optional(object({
      accessID  = optional(string)
      accessKey = optional(string)
      account   = optional(string)
    }))
    kube-state-metrics = optional(object({
      enabled = optional(string)
    }))
  })
}

locals {
  lm-container-configuration = defaults(var.lm-container-configuration, {
    kube-state-metrics = {
      enabled = true
    }
  })
}

variable "namespace" {
  default = "tf-lmc"
  type    = string
}

variable "reuse_values" {
  default = true
  type    = bool
}

variable "timeout" {
  // increased timeout to 5 minutes since collector may take time to come up sometimes.
  default = 600
  type    = number
}
variable "lm_container_version" {
  type = string
}
variable "repository" {
  default = "https://logicmonitor.github.io/helm-charts"
  type    = string
}
variable "name" {
  default = "lm-container"
  type    = string
}