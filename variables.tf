variable "lm-container-configuration" {
  type = object({

    argus = object({

      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

      }))
      clusterTreeParentID = optional(number)

      tolerations = optional(any)

      resourceContainerID = optional(number)

      account = optional(string)

      labels = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

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
      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      clusterName = string

      affinity = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      log = optional(object({

        level = optional(string)

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
      accessID = optional(string)

      daemons = optional(object({

        worker = optional(object({

          poolSize = optional(number)

        }))
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
      }))
      collector = optional(object({

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        annotations = optional(any)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

        }))
        labels = optional(any)

        env = optional(any)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        size = optional(string)

        useEA = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      accessKey = optional(string)

      priorityClassName = optional(string)

      filters = optional(any)

    })
    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      tolerations = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      annotations = optional(any)

      affinity = optional(any)

      labels = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
    }))
    global = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      }))
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.3.0-rc02"
}