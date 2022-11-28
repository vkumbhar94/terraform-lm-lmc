variable "lm-container-configuration" {
  type = object({

    argus = object({

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      nameOverride = optional(string)

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
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessID = optional(string)

      resourceContainerID = optional(number)

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
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      lm = optional(object({

        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
        resource = optional(object({

          alerting = optional(object({

            disable = optional(any)

          }))
          globalDeleteAfterDuration = optional(string)

        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      collector = optional(object({

        version = optional(number)

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
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        annotations = optional(any)

        env = optional(any)

        useEA = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        labels = optional(any)

        disableLightweightCollector = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      clusterName = string

      affinity = optional(any)

      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      monitoring = optional(object({

        disable = optional(any)

      }))
      enabled = optional(bool)

      accessKey = optional(string)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
    })
    collectorset-controller = optional(object({

      account = optional(string)

      annotations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      enabled = optional(bool)

      affinity = optional(any)

      priorityClassName = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      tolerations = optional(any)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

    }))
    lm-logs = object({

      affinity = optional(any)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

      })
      accessID = optional(string)

      labels = optional(any)

      annotations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      enabled = optional(bool)

      clusterName = string

      fullnameOverride = optional(string)

      accessKey = optional(string)

      account = optional(string)

      nameOverride = optional(string)

      env = optional(any)

      nodeSelector = optional(any)

    })
    global = optional(object({

      account = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.0.0-rt03"
}