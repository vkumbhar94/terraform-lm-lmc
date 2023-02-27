variable "lm-container-configuration" {
  type = object({

    argus = object({

      affinity = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      collector = optional(object({

        version = optional(number)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        useEA = optional(bool)

        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        disableLightweightCollector = optional(bool)

      }))
      resourceContainerID = optional(number)

      account = optional(string)

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
      imagePullSecrets = optional(any)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      labels = optional(any)

      fullnameOverride = optional(string)

      accessID = optional(string)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      enabled = optional(bool)

      accessKey = optional(string)

      clusterName = string

      priorityClassName = optional(string)

      annotations = optional(any)

      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

      }))
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
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
    })
    collectorset-controller = optional(object({

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      nameOverride = optional(string)

      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      account = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      affinity = optional(any)

      labels = optional(any)

    }))
    lm-logs = object({

      accessKey = optional(string)

      clusterName = string

      labels = optional(any)

      affinity = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      account = optional(string)

      fullnameOverride = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      nameOverride = optional(string)

      env = optional(any)

      annotations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      nodeSelector = optional(any)

    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.3.0-rc01"
}