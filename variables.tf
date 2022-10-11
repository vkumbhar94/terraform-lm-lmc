variable "lm-container-configuration" {
  type = object({

    argus = object({

      clusterTreeParentID = optional(number)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      clusterName = string

      nodeSelector = optional(any)

      affinity = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

      }))
      nameOverride = optional(string)

      account = optional(string)

      filters = optional(any)

      lm = optional(object({

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

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      tolerations = optional(any)

      collector = optional(object({

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        version = optional(number)

        annotations = optional(any)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        disableLightweightCollector = optional(bool)

      }))
      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      accessID = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
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

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

          }))
        }))
      }))
      imagePullSecrets = optional(any)

      enabled = optional(bool)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

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
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      resourceContainerID = optional(number)

      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

    })
    collectorset-controller = optional(object({

      annotations = optional(any)

      ignoreSSL = optional(bool)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      priorityClassName = optional(string)

      labels = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      nameOverride = optional(string)

      affinity = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      tolerations = optional(any)

      enabled = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

    }))
    global = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "1.2.0-rc02"
}