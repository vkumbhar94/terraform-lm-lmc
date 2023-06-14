variable "lm-container-configuration" {
  type = object({

    argus = object({

      tolerations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      clusterName = string

      ignoreSSL = optional(bool)

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
      clusterTreeParentID = optional(number)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessID = optional(string)

      accessKey = optional(string)

      enableLegacyResourceTree = optional(bool)

      priorityClassName = optional(string)

      collector = optional(object({

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        useEA = optional(bool)

        version = optional(number)

        env = optional(any)

        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

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
        size = optional(string)

      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      annotations = optional(any)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      imagePullSecrets = optional(any)

      probe = optional(object({

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
        enabled = optional(bool)

      }))
      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      lm = optional(object({

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
        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
      }))
      affinity = optional(any)

      labels = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

      }))
      filters = optional(any)

      account = optional(string)

    })
    collectorset-controller = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      priorityClassName = optional(string)

      fullnameOverride = optional(string)

      affinity = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
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
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      enabled = optional(bool)

      account = optional(string)

      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
    }))
    lm-logs = object({

      accessID = optional(string)

      annotations = optional(any)

      fullnameOverride = optional(string)

      enabled = optional(bool)

      clusterName = string

      env = optional(any)

      nodeSelector = optional(any)

      accessKey = optional(string)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      labels = optional(any)

      nameOverride = optional(string)

    })
    global = optional(object({

      image = object({

        pullPolicy = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      account = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.1.0-rt02"
}