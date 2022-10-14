variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

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
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      annotations = optional(any)

    }))
    argus = object({

      annotations = optional(any)

      monitoring = optional(object({

        disable = optional(any)

      }))
      collector = optional(object({

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        labels = optional(any)

        env = optional(any)

        replicas = optional(number)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        version = optional(number)

        annotations = optional(any)

        disableLightweightCollector = optional(bool)

        size = optional(string)

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
        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

      accessKey = optional(string)

      priorityClassName = optional(string)

      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      fullnameOverride = optional(string)

      clusterTreeParentID = optional(number)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

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

      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      daemons = optional(object({

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
        lmCacheSync = optional(object({

          interval = optional(string)

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

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        enabled = optional(bool)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      log = optional(object({

        level = optional(string)

      }))
      enabled = optional(bool)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      nameOverride = optional(string)

    })
    global = optional(object({

      account = optional(string)

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.3.0-rc01"
}