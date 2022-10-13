variable "lm-container-configuration" {
  type = object({

    argus = object({

      account = optional(string)

      clusterTreeParentID = optional(number)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      annotations = optional(any)

      daemons = optional(object({

        watcher = optional(object({

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

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
      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      log = optional(object({

        level = optional(string)

      }))
      collector = optional(object({

        version = optional(number)

        replicas = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

      }))
      nameOverride = optional(string)

      accessKey = optional(string)

      nodeSelector = optional(any)

      tolerations = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      probe = optional(object({

        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      enabled = optional(bool)

      accessID = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      labels = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      monitoring = optional(object({

        disable = optional(any)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterName = string

      affinity = optional(any)

      filters = optional(any)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

    })
    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      labels = optional(any)

      accessKey = optional(string)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      enabled = optional(bool)

      account = optional(string)

    }))
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.2.0-rc04"
}