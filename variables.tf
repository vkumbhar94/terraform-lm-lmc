variable "lm-container-configuration" {
  type = object({

    argus = object({

      enabled = optional(bool)

      account = optional(string)

      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      affinity = optional(any)

      labels = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      priorityClassName = optional(string)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      collector = optional(object({

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        env = optional(any)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        annotations = optional(any)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        size = optional(string)

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
        useEA = optional(bool)

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

      }))
      fullnameOverride = optional(string)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      accessKey = optional(string)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

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
      resourceContainerID = optional(number)

      filters = optional(any)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

      probe = optional(object({

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        enabled = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      fullnameOverride = optional(string)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      account = optional(string)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      nodeSelector = optional(any)

      annotations = optional(any)

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
    }))
    lm-logs = object({

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessID = optional(string)

      clusterName = string

      fullnameOverride = optional(string)

      affinity = optional(any)

      enabled = optional(bool)

      account = optional(string)

      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessKey = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      env = optional(any)

      nodeSelector = optional(any)

    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      image = object({

        pullPolicy = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.1.0-rc04"
}