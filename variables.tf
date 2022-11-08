variable "lm-container-configuration" {
  type = object({

    argus = object({

      ignoreSSL = optional(bool)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

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

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      annotations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      priorityClassName = optional(string)

      account = optional(string)

      clusterTreeParentID = optional(number)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      filters = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      resourceContainerID = optional(number)

      tolerations = optional(any)

      affinity = optional(any)

      monitoring = optional(object({

        disable = optional(any)

      }))
      collector = optional(object({

        disableLightweightCollector = optional(bool)

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
        size = optional(string)

        env = optional(any)

        version = optional(number)

        annotations = optional(any)

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
        replicas = optional(number)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      accessID = optional(string)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

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
      enabled = optional(bool)

    })
    collectorset-controller = optional(object({

      accessID = optional(string)

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      enabled = optional(bool)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      ignoreSSL = optional(bool)

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
  default = "3.0.0-rc02"
}