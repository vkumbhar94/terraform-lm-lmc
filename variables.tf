variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      env = optional(any)

      nodeSelector = optional(any)

      accessID = optional(string)

      clusterName = string

      labels = optional(any)

      fullnameOverride = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      enabled = optional(bool)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      accessKey = optional(string)

      account = optional(string)

    })
    argus = object({

      account = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
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
      filters = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      accessID = optional(string)

      priorityClassName = optional(string)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      accessKey = optional(string)

      clusterTreeParentID = optional(number)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
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
      annotations = optional(any)

      resourceContainerID = optional(number)

      rbac = optional(object({

        create = optional(bool)

      }))
      enableLegacyResourceTree = optional(bool)

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
        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
      }))
      clusterName = string

      ignoreSSL = optional(bool)

      collector = optional(object({

        labels = optional(any)

        env = optional(any)

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
        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

        useEA = optional(bool)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

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
      }))
      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
    })
    collectorset-controller = optional(object({

      priorityClassName = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      account = optional(string)

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
      nodeSelector = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      labels = optional(any)

      ignoreSSL = optional(bool)

    }))
    global = optional(object({

      clusterName = string

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = object({

        pullPolicy = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.1.0-rc04"
}