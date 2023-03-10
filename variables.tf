variable "lm-container-configuration" {
  type = object({

    argus = object({

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      labels = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
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
      ignoreSSL = optional(bool)

      daemons = optional(object({

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
        worker = optional(object({

          poolSize = optional(number)

        }))
      }))
      nodeSelector = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

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

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
        lmlogs = optional(object({

          k8spodlog = optional(any)

          k8sevent = optional(any)

        }))
      }))
      enabled = optional(bool)

      accessKey = optional(string)

      clusterName = string

      affinity = optional(any)

      tolerations = optional(any)

      filters = optional(any)

      imagePullSecrets = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      collector = optional(object({

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        env = optional(any)

        probe = optional(object({

          enabled = optional(bool)

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
        }))
        disableLightweightCollector = optional(bool)

        version = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

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

        size = optional(string)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      annotations = optional(any)

    })
    collectorset-controller = optional(object({

      enabled = optional(bool)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      tolerations = optional(any)

      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      labels = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

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

      clusterName = string

      labels = optional(any)

      nodeSelector = optional(any)

      accessKey = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      accessID = optional(string)

      affinity = optional(any)

    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      collectorsetServiceNameSuffix = optional(string)

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
  default = "3.3.1-rc01"
}