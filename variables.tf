variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      accessKey = optional(string)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      enabled = optional(bool)

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
      priorityClassName = optional(string)

      labels = optional(any)

      nodeSelector = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

    }))
    lm-logs = object({

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessKey = optional(string)

      account = optional(string)

      env = optional(any)

      enabled = optional(bool)

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      accessID = optional(string)

      clusterName = string

      fullnameOverride = optional(string)

    })
    argus = object({

      clusterTreeParentID = optional(number)

      affinity = optional(any)

      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      enabled = optional(bool)

      accessID = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      collector = optional(object({

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
        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        annotations = optional(any)

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
        disableLightweightCollector = optional(bool)

        size = optional(string)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        env = optional(any)

        version = optional(number)

      }))
      fullnameOverride = optional(string)

      accessKey = optional(string)

      nodeSelector = optional(any)

      labels = optional(any)

      account = optional(string)

      resourceContainerID = optional(number)

      rbac = optional(object({

        create = optional(bool)

      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      nameOverride = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      daemons = optional(object({

        watcher = optional(object({

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
        }))
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
      }))
      filters = optional(any)

      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
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
      clusterName = string

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        registry = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.2.0-rc08"
}