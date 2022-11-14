variable "lm-container-configuration" {
  type = object({

    argus = object({

      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      imagePullSecrets = optional(any)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

      filters = optional(any)

      accessID = optional(string)

      clusterTreeParentID = optional(number)

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
      accessKey = optional(string)

      nodeSelector = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      collector = optional(object({

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        replicas = optional(number)

        version = optional(number)

        env = optional(any)

        useEA = optional(bool)

        labels = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        disableLightweightCollector = optional(bool)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
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
      account = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      priorityClassName = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      fullnameOverride = optional(string)

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
      tolerations = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

    }))
    lm-logs = object({

      enabled = optional(bool)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      accessKey = optional(string)

      clusterName = string

      nodeSelector = optional(any)

      affinity = optional(any)

      account = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      accessID = optional(string)

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
    })
    global = optional(object({

      account = optional(string)

      clusterName = string

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.0.0-rc06"
}