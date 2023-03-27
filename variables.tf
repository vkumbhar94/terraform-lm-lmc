variable "lm-container-configuration" {
  type = object({

    argus = object({

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      nodeSelector = optional(any)

      collector = optional(object({

        labels = optional(any)

        probe = optional(object({

          enabled = optional(bool)

          startup = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
        env = optional(any)

        disableLightweightCollector = optional(bool)

        replicas = optional(number)

        useEA = optional(bool)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        size = optional(string)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

      }))
      tolerations = optional(any)

      resourceContainerID = optional(number)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      probe = optional(object({

        liveness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      imagePullSecrets = optional(any)

      lm = optional(object({

        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
        lmlogs = optional(object({

          k8spodlog = optional(any)

          k8sevent = optional(any)

        }))
        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            nodes = optional(any)

            etcd = optional(any)

            cluster = optional(any)

          }))
        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      filters = optional(any)

      fullnameOverride = optional(string)

      accessID = optional(string)

      clusterName = string

      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      daemons = optional(object({

        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
        watcher = optional(object({

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      accessKey = optional(string)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      priorityClassName = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      enabled = optional(bool)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

    }))
    lm-logs = object({

      clusterName = string

      labels = optional(any)

      annotations = optional(any)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      accessKey = optional(string)

      account = optional(string)

      accessID = optional(string)

      nameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      enabled = optional(bool)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.4.0-rc04"
}