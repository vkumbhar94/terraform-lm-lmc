variable "lm-container-configuration" {
  type = object({

    argus = object({

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      labels = optional(any)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      resourceContainerID = optional(number)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      enabled = optional(bool)

      priorityClassName = optional(string)

      filters = optional(any)

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

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      accessID = optional(string)

      clusterName = string

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      annotations = optional(any)

      affinity = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      collector = optional(object({

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

        version = optional(number)

        annotations = optional(any)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        size = optional(string)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        env = optional(any)

        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      daemons = optional(object({

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
        worker = optional(object({

          poolSize = optional(number)

        }))
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

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      clusterTreeParentID = optional(number)

      ignoreSSL = optional(bool)

    })
    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      ignoreSSL = optional(bool)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      tolerations = optional(any)

      labels = optional(any)

      annotations = optional(any)

      accessID = optional(string)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
    }))
    lm-logs = object({

      enabled = optional(bool)

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      account = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      clusterName = string

      fullnameOverride = optional(string)

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
  default = "3.2.0-rc07"
}