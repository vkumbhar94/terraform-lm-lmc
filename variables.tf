variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      clusterName = string

      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      accessKey = optional(string)

      accessID = optional(string)

      annotations = optional(any)

      fullnameOverride = optional(string)

      env = optional(any)

      account = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

    })
    argus = object({

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      tolerations = optional(any)

      resourceContainerID = optional(number)

      account = optional(string)

      imagePullSecrets = optional(any)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
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
      collector = optional(object({

        replicas = optional(number)

        version = optional(number)

        labels = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        annotations = optional(any)

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
        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        allowMultipleCollectorsOnNode = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
      }))
      fullnameOverride = optional(string)

      accessKey = optional(string)

      enableLegacyResourceTree = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

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
      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      rbac = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

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
      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      clusterName = string

      clusterTreeParentID = optional(number)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      affinity = optional(any)

      labels = optional(any)

      annotations = optional(any)

    })
    collectorset-controller = optional(object({

      account = optional(string)

      nameOverride = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      tolerations = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      labels = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
    }))
    global = optional(object({

      account = optional(string)

      clusterName = string

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      }))
      collectorsetServiceNameSuffix = optional(string)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      userDefinedSecret = optional(string)

      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.0.0-rc02"
}