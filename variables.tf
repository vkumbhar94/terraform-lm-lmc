variable "lm-container-configuration" {
  type = object({

    argus = object({

      annotations = optional(any)

      nameOverride = optional(string)

      accessKey = optional(string)

      clusterName = string

      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      resourceContainerID = optional(number)

      ignoreSSL = optional(bool)

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
      filters = optional(any)

      fullnameOverride = optional(string)

      account = optional(string)

      tolerations = optional(any)

      collector = optional(object({

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
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
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        version = optional(number)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        labels = optional(any)

        env = optional(any)

        size = optional(string)

        useEA = optional(bool)

        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

        }))
      }))
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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

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
      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      enabled = optional(bool)

      accessID = optional(string)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      labels = optional(any)

      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      lm = optional(object({

        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
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

        port = optional(number)

        enable = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nodeSelector = optional(any)

      account = optional(string)

      labels = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      enabled = optional(bool)

      nameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
    }))
    lm-logs = object({

      enabled = optional(bool)

      fullnameOverride = optional(string)

      affinity = optional(any)

      accessID = optional(string)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessKey = optional(string)

      clusterName = string

      nameOverride = optional(string)

      env = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      labels = optional(any)

      annotations = optional(any)

      nodeSelector = optional(any)

    })
    global = optional(object({

      clusterName = string

      accessID = optional(string)

      accessKey = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

      account = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.4.0-rc05"
}