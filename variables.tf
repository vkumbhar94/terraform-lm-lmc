variable "lm-container-configuration" {
  type = object({

    argus = object({

      log = optional(object({

        level = optional(string)

      }))
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

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
      }))
      monitoring = optional(object({

        disable = optional(any)

      }))
      clusterName = string

      annotations = optional(any)

      collector = optional(object({

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

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
        replicas = optional(number)

        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        useEA = optional(bool)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      filters = optional(any)

      account = optional(string)

      ignoreSSL = optional(bool)

      lm = optional(object({

        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
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
      }))
      enabled = optional(bool)

      tolerations = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      accessID = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessKey = optional(string)

    })
    collectorset-controller = optional(object({

      labels = optional(any)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      annotations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      affinity = optional(any)

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      nameOverride = optional(string)

      tolerations = optional(any)

    }))
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.2.0-rc01"
}