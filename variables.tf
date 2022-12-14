variable "lm-container-configuration" {
  type = object({

    argus = object({

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      fullnameOverride = optional(string)

      filters = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

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

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

          }))
        }))
      }))
      nodeSelector = optional(any)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

      accessID = optional(string)

      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      annotations = optional(any)

      resourceContainerID = optional(number)

      imagePullSecrets = optional(any)

      clusterTreeParentID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

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

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      clusterName = string

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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

        replicas = optional(number)

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

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
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        useEA = optional(bool)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        version = optional(number)

        annotations = optional(any)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

    })
    collectorset-controller = optional(object({

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      labels = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      account = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      accessID = optional(string)

    }))
    lm-logs = object({

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      account = optional(string)

      annotations = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      accessID = optional(string)

      labels = optional(any)

      nameOverride = optional(string)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.1.0-rc02"
}