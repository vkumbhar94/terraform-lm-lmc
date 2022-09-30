variable "namespace" {
  default = "logicmonitor"
  type    = string
}

variable "reuse_values" {
  default = true
  type    = bool
}

variable "timeout" {
  // increased timeout to 10 minutes since collector may take time to come up sometimes.
  default = 600
  type    = number
}
variable "repository" {
  default = "https://logicmonitor.github.io/helm-charts"
  type    = string
}
variable "name" {
  default = "lm-container"
  type    = string
}
