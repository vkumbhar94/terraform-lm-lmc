variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      annotations = optional(any)

      nodeSelector = optional(any)

      account = optional(string)

      labels = optional(any)

      env = optional(any)

      accessKey = optional(string)

      clusterName = string

      affinity = optional(any)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

      })
      accessID = optional(string)

    })
    argus = object({

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
      tolerations = optional(any)

      labels = optional(any)

      annotations = optional(any)

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
      priorityClassName = optional(string)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      accessID = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      collector = optional(object({

        version = optional(number)

        useEA = optional(bool)

        env = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        labels = optional(any)

        disableLightweightCollector = optional(bool)

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
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        size = optional(string)

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
      }))
      enabled = optional(bool)

      clusterName = string

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      affinity = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      accessKey = optional(string)

      ignoreSSL = optional(bool)

      enableLegacyResourceTree = optional(bool)

      resourceContainerID = optional(number)

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
      account = optional(string)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
    })
    collectorset-controller = optional(object({

      fullnameOverride = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      annotations = optional(any)

    }))
    global = optional(object({

      clusterName = string

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      collectorsetServiceNameSuffix = optional(string)

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
  default = "4.1.0-rt01"
}