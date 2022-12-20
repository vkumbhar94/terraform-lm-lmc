variable "lm-container-configuration" {
  type = object({

    argus = object({

      resourceContainerID = optional(number)

      lm = optional(object({

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
        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
      }))
      collector = optional(object({

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        useEA = optional(bool)

        env = optional(any)

        disableLightweightCollector = optional(bool)

        version = optional(number)

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
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        size = optional(string)

        annotations = optional(any)

        replicas = optional(number)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      monitoring = optional(object({

        disable = optional(any)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      clusterName = string

      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

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

          bulkSyncInterval = optional(string)

          runner = optional(object({

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
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

      annotations = optional(any)

      accessID = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessKey = optional(string)

      account = optional(string)

      clusterTreeParentID = optional(number)

      labels = optional(any)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      tolerations = optional(any)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      priorityClassName = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

    }))
    lm-logs = object({

      accessID = optional(string)

      annotations = optional(any)

      fullnameOverride = optional(string)

      affinity = optional(any)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      labels = optional(any)

      env = optional(any)

      nodeSelector = optional(any)

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      nameOverride = optional(string)

    })
    global = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      image = optional(object({

        repository = optional(string)

        pullPolicy = optional(string)

        registry = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.1.0-rc03"
}