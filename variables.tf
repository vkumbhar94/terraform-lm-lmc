variable "lm-container-configuration" {
  type = object({

    argus = object({

      imagePullSecrets = optional(any)

      enableLegacyResourceTree = optional(bool)

      resourceContainerID = optional(number)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      collector = optional(object({

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

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
        annotations = optional(any)

        labels = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

        size = optional(string)

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

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
      rbac = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      clusterTreeParentID = optional(number)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

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
      accessKey = optional(string)

      clusterName = string

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      ignoreSSL = optional(bool)

      enabled = optional(bool)

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

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
        }))
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

      affinity = optional(any)

      labels = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      log = optional(object({

        level = optional(string)

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

    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

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

      enabled = optional(bool)

      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

    }))
    lm-logs = object({

      enabled = optional(bool)

      accessID = optional(string)

      labels = optional(any)

      fullnameOverride = optional(string)

      env = optional(any)

      nodeSelector = optional(any)

      affinity = optional(any)

      account = optional(string)

      clusterName = string

      annotations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      nameOverride = optional(string)

      accessKey = optional(string)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessID = optional(string)

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
  default = "4.4.0-rc01"
}