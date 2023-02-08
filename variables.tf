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
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      accessID = optional(string)

      account = optional(string)

      affinity = optional(any)

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
      tolerations = optional(any)

      labels = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      imagePullSecrets = optional(any)

      collector = optional(object({

        replicas = optional(number)

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
        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        collectorConf = optional(object({

          agentConf = optional(any)

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

        size = optional(string)

        labels = optional(any)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
      }))
      enabled = optional(bool)

      accessKey = optional(string)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

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
      priorityClassName = optional(string)

      resourceContainerID = optional(number)

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

    })
    collectorset-controller = optional(object({

      enabled = optional(bool)

      accessKey = optional(string)

      priorityClassName = optional(string)

      tolerations = optional(any)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      account = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

    }))
    lm-logs = object({

      clusterName = string

      nameOverride = optional(string)

      affinity = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      labels = optional(any)

      env = optional(any)

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      annotations = optional(any)

    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.2.0-rt03"
}