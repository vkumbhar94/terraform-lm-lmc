variable "lm-container-configuration" {
  type = object({

    argus = object({

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

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
      clusterName = string

      labels = optional(any)

      daemons = optional(object({

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
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      accessKey = optional(string)

      tolerations = optional(any)

      resourceContainerID = optional(number)

      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      accessID = optional(string)

      account = optional(string)

      clusterTreeParentID = optional(number)

      filters = optional(any)

      collector = optional(object({

        version = optional(number)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        annotations = optional(any)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        replicas = optional(number)

        size = optional(string)

        useEA = optional(bool)

        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        probe = optional(object({

          enabled = optional(bool)

          startup = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          liveness = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
          readiness = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        disableLightweightCollector = optional(bool)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      annotations = optional(any)

      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      lm = optional(object({

        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
    })
    collectorset-controller = optional(object({

      affinity = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      account = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      nodeSelector = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      priorityClassName = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
    }))
    global = optional(object({

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      }))
      account = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.0.0-rc04"
}