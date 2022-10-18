variable "lm-container-configuration" {
  type = object({

    argus = object({

      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      affinity = optional(any)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

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

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      fullnameOverride = optional(string)

      monitoring = optional(object({

        disable = optional(any)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      resourceContainerID = optional(number)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

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
      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      collector = optional(object({

        env = optional(any)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

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
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        size = optional(string)

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
        version = optional(number)

        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      account = optional(string)

      tolerations = optional(any)

      annotations = optional(any)

      filters = optional(any)

    })
    collectorset-controller = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

      ignoreSSL = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      enabled = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      affinity = optional(any)

      tolerations = optional(any)

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
  default = "1.3.0-rc03"
}