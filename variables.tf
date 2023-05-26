variable "lm-container-configuration" {
  type = object({

    argus = object({

      affinity = optional(any)

      tolerations = optional(any)

      monitoring = optional(object({

        labels = optional(object({

          ignore = optional(any)

        }))
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

            nodes = optional(any)

            etcd = optional(any)

            cluster = optional(any)

          }))
        }))
      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      collector = optional(object({

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        labels = optional(any)

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
        disableLightweightCollector = optional(bool)

        annotations = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        version = optional(number)

        size = optional(string)

        allowMultipleCollectorsOnNode = optional(bool)

        env = optional(any)

      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      annotations = optional(any)

      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessKey = optional(string)

      clusterName = string

      enabled = optional(bool)

      ignoreSSL = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      account = optional(string)

      filters = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      labels = optional(any)

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
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      daemons = optional(object({

        watcher = optional(object({

          runner = optional(object({

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

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
    })
    collectorset-controller = optional(object({

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      labels = optional(any)

      ignoreSSL = optional(bool)

      account = optional(string)

      tolerations = optional(any)

    }))
    lm-logs = object({

      annotations = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      labels = optional(any)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      clusterName = string

      env = optional(any)

    })
    global = optional(object({

      image = object({

        pullPolicy = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.1.0-rc01"
}