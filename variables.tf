variable "lm-container-configuration" {
  type = object({

    argus = object({

      accessKey = optional(string)

      clusterName = string

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      affinity = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      collector = optional(object({

        version = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        size = optional(string)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        probe = optional(object({

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
          enabled = optional(bool)

        }))
        disableLightweightCollector = optional(bool)

      }))
      nameOverride = optional(string)

      probe = optional(object({

        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

      accessID = optional(string)

      daemons = optional(object({

        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
        watcher = optional(object({

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
        }))
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
      imagePullSecrets = optional(any)

      account = optional(string)

      labels = optional(any)

      filters = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      priorityClassName = optional(string)

      tolerations = optional(any)

      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      accessKey = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      account = optional(string)

      fullnameOverride = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

    }))
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.1.0-rt08"
}