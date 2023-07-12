variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      affinity = optional(any)

      account = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      accessKey = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      tolerations = optional(any)

      labels = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

    }))
    lm-logs = object({

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      labels = optional(any)

      nameOverride = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      annotations = optional(any)

      nodeSelector = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      account = optional(string)

    })
    argus = object({

      accessKey = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      annotations = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      fullnameOverride = optional(string)

      enabled = optional(bool)

      account = optional(string)

      nodeSelector = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      enableLegacyResourceTree = optional(bool)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      collector = optional(object({

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        annotations = optional(any)

        env = optional(any)

        size = optional(string)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        useEA = optional(bool)

        labels = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

        }))
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
      }))
      resourceContainerID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      clusterName = string

      imagePullSecrets = optional(any)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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
        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
      }))
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      clusterTreeParentID = optional(number)

      affinity = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
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
      nameOverride = optional(string)

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

      ignoreSSL = optional(bool)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessKey = optional(string)

      account = optional(string)

      accessID = optional(string)

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
  default = "4.3.0-rc01"
}