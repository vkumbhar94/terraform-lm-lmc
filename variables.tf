variable "lm-container-configuration" {
  type = object({

    argus = object({

      priorityClassName = optional(string)

      annotations = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      filters = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      nodeSelector = optional(any)

      labels = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      imagePullSecrets = optional(any)

      enabled = optional(bool)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      account = optional(string)

      clusterTreeParentID = optional(number)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
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
      accessID = optional(string)

      enableLegacyResourceTree = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      collector = optional(object({

        size = optional(string)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        disableLightweightCollector = optional(bool)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        annotations = optional(any)

        replicas = optional(number)

        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

      }))
      clusterName = string

      affinity = optional(any)

      resourceContainerID = optional(number)

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
    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      enabled = optional(bool)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      affinity = optional(any)

      tolerations = optional(any)

      accessID = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      annotations = optional(any)

      account = optional(string)

    }))
    lm-logs = object({

      nodeSelector = optional(any)

      affinity = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      annotations = optional(any)

      nameOverride = optional(string)

      env = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      clusterName = string

      accessKey = optional(string)

      account = optional(string)

      labels = optional(any)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.1.0-rc02"
}