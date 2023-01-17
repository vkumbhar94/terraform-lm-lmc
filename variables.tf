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
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      account = optional(string)

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
      labels = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      accessID = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      priorityClassName = optional(string)

      clusterName = string

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      resourceContainerID = optional(number)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      clusterTreeParentID = optional(number)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      lm = optional(object({

        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
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
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      tolerations = optional(any)

      filters = optional(any)

      collector = optional(object({

        size = optional(string)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

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

        probe = optional(object({

          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          enabled = optional(bool)

          startup = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
        env = optional(any)

        disableLightweightCollector = optional(bool)

      }))
      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      enabled = optional(bool)

    })
    collectorset-controller = optional(object({

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      tolerations = optional(any)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      labels = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      ignoreSSL = optional(bool)

    }))
    lm-logs = object({

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      accessID = optional(string)

      clusterName = string

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      account = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    global = optional(object({

      clusterName = string

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
  default = "3.2.0-rc04"
}