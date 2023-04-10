variable "lm-container-configuration" {
  type = object({

    argus = object({

      enabled = optional(bool)

      accessKey = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      affinity = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      nodeSelector = optional(any)

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
      collector = optional(object({

        replicas = optional(number)

        version = optional(number)

        size = optional(string)

        useEA = optional(bool)

        env = optional(any)

        disableLightweightCollector = optional(bool)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

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
      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

      clusterName = string

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      log = optional(object({

        level = optional(string)

      }))
      filters = optional(any)

      labels = optional(any)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      annotations = optional(any)

      accessID = optional(string)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      nameOverride = optional(string)

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

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

    }))
    lm-logs = object({

      affinity = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      fullnameOverride = optional(string)

      labels = optional(any)

      accessID = optional(string)

      account = optional(string)

      clusterName = string

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      nameOverride = optional(string)

    })
    global = optional(object({

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      }))
      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.5.0-rt01"
}