variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      tolerations = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      labels = optional(any)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

    }))
    lm-logs = object({

      accessKey = optional(string)

      account = optional(string)

      env = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      nodeSelector = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      accessID = optional(string)

      clusterName = string

      annotations = optional(any)

      nameOverride = optional(string)

      affinity = optional(any)

    })
    argus = object({

      ignoreSSL = optional(bool)

      imagePullSecrets = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      priorityClassName = optional(string)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      probe = optional(object({

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
        enabled = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      annotations = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

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
      fullnameOverride = optional(string)

      clusterName = string

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
      enabled = optional(bool)

      tolerations = optional(any)

      labels = optional(any)

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
      filters = optional(any)

      collector = optional(object({

        replicas = optional(number)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        useEA = optional(bool)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        annotations = optional(any)

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
        version = optional(number)

        size = optional(string)

        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        disableLightweightCollector = optional(bool)

      }))
      accessKey = optional(string)

      affinity = optional(any)

      nodeSelector = optional(any)

      clusterTreeParentID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      accessID = optional(string)

    })
    global = optional(object({

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.0.0-rc05"
}