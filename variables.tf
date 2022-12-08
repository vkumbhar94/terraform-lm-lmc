variable "lm-container-configuration" {
  type = object({

    argus = object({

      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      monitoring = optional(object({

        disable = optional(any)

      }))
      fullnameOverride = optional(string)

      account = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      affinity = optional(any)

      enabled = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      accessID = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      annotations = optional(any)

      filters = optional(any)

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
      imagePullSecrets = optional(any)

      clusterName = string

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      lm = optional(object({

        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
        }))
        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      labels = optional(any)

      resourceContainerID = optional(number)

      collector = optional(object({

        annotations = optional(any)

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
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        labels = optional(any)

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
        useEA = optional(bool)

        size = optional(string)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        replicas = optional(number)

      }))
      nodeSelector = optional(any)

    })
    collectorset-controller = optional(object({

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      labels = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

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
      affinity = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      account = optional(string)

      ignoreSSL = optional(bool)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
    }))
    lm-logs = object({

      clusterName = string

      affinity = optional(any)

      enabled = optional(bool)

      env = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      labels = optional(any)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.1.0-rc01"
}