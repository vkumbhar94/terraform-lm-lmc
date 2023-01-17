variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      enabled = optional(bool)

      accessID = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      fullnameOverride = optional(string)

    })
    argus = object({

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

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

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      priorityClassName = optional(string)

      labels = optional(any)

      clusterName = string

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessID = optional(string)

      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      fullnameOverride = optional(string)

      enabled = optional(bool)

      affinity = optional(any)

      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

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

            nodes = optional(any)

            etcd = optional(any)

            cluster = optional(any)

          }))
        }))
      }))
      filters = optional(any)

      collector = optional(object({

        replicas = optional(number)

        size = optional(string)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        version = optional(number)

        useEA = optional(bool)

        annotations = optional(any)

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
          enabled = optional(bool)

        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        labels = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

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
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      annotations = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

    })
    collectorset-controller = optional(object({

      priorityClassName = optional(string)

      labels = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      fullnameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      tolerations = optional(any)

      accessKey = optional(string)

    }))
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.2.0-rc03"
}