variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      account = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      priorityClassName = optional(string)

      nameOverride = optional(string)

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
      annotations = optional(any)

      nodeSelector = optional(any)

      affinity = optional(any)

    }))
    lm-logs = object({

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      fullnameOverride = optional(string)

      env = optional(any)

      accessKey = optional(string)

      account = optional(string)

      accessID = optional(string)

      enabled = optional(bool)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      nodeSelector = optional(any)

      affinity = optional(any)

      labels = optional(any)

      nameOverride = optional(string)

    })
    argus = object({

      affinity = optional(any)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      fullnameOverride = optional(string)

      clusterName = string

      clusterTreeParentID = optional(number)

      labels = optional(any)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      priorityClassName = optional(string)

      tolerations = optional(any)

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

          pass = optional(string)

          url = optional(string)

          user = optional(string)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

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
        env = optional(any)

        version = optional(number)

        useEA = optional(bool)

        labels = optional(any)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        annotations = optional(any)

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
      accessID = optional(string)

      accessKey = optional(string)

      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

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
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      enabled = optional(bool)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      lm = optional(object({

        lmlogs = optional(object({

          k8spodlog = optional(any)

          k8sevent = optional(any)

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
      filters = optional(any)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      clusterName = string

      accessKey = optional(string)

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
  default = "3.2.0-rc06"
}