variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      enabled = optional(bool)

      accessKey = optional(string)

      labels = optional(any)

      affinity = optional(any)

      env = optional(any)

      nodeSelector = optional(any)

      accessID = optional(string)

      account = optional(string)

      clusterName = string

      nameOverride = optional(string)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      annotations = optional(any)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    argus = object({

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
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessID = optional(string)

      account = optional(string)

      clusterName = string

      priorityClassName = optional(string)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      rbac = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      affinity = optional(any)

      labels = optional(any)

      clusterTreeParentID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      log = optional(object({

        level = optional(string)

      }))
      collector = optional(object({

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        annotations = optional(any)

        labels = optional(any)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        version = optional(number)

        size = optional(string)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

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
        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

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
      }))
      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      enabled = optional(bool)

      nodeSelector = optional(any)

      fullnameOverride = optional(string)

      accessKey = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
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

      nodeSelector = optional(any)

      tolerations = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

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

      accessID = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      annotations = optional(any)

    }))
    global = optional(object({

      account = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      accessKey = optional(string)

      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.2.0-rt01"
}