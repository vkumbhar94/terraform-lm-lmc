variable "lm-container-configuration" {
  type = object({

    argus = object({

      enableLegacyResourceTree = optional(bool)

      collector = optional(object({

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        disableLightweightCollector = optional(bool)

        env = optional(any)

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

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
        version = optional(number)

        useEA = optional(bool)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        labels = optional(any)

        replicas = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

      }))
      probe = optional(object({

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
        enabled = optional(bool)

      }))
      accessID = optional(string)

      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterName = string

      tolerations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      lm = optional(object({

        resourceGroup = optional(object({

          extraProps = optional(object({

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
        }))
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
      }))
      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      account = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      fullnameOverride = optional(string)

      enabled = optional(bool)

      nodeSelector = optional(any)

      affinity = optional(any)

      labels = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
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
      imagePullSecrets = optional(any)

    })
    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

      accessKey = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      ignoreSSL = optional(bool)

      enabled = optional(bool)

      accessID = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
    }))
    lm-logs = object({

      nodeSelector = optional(any)

      affinity = optional(any)

      accessID = optional(string)

      account = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      accessKey = optional(string)

      nameOverride = optional(string)

      enabled = optional(bool)

      clusterName = string

      labels = optional(any)

      annotations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    global = optional(object({

      account = optional(string)

      clusterName = string

      accessID = optional(string)

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

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.4.0-rc02"
}