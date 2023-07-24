variable "lm-container-configuration" {
  type = object({

    argus = object({

      account = optional(string)

      affinity = optional(any)

      log = optional(object({

        level = optional(string)

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
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      accessID = optional(string)

      clusterName = string

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      enabled = optional(bool)

      accessKey = optional(string)

      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      labels = optional(any)

      collector = optional(object({

        annotations = optional(any)

        disableLightweightCollector = optional(bool)

        replicas = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        env = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        version = optional(number)

        size = optional(string)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        labels = optional(any)

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
      nameOverride = optional(string)

      rbac = optional(object({

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
      clusterTreeParentID = optional(number)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      priorityClassName = optional(string)

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

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
        }))
      }))
      imagePullSecrets = optional(any)

      nodeSelector = optional(any)

      tolerations = optional(any)

      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

    })
    collectorset-controller = optional(object({

      fullnameOverride = optional(string)

      affinity = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      annotations = optional(any)

      accessKey = optional(string)

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
      accessID = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
    }))
    lm-logs = object({

      enabled = optional(bool)

      account = optional(string)

      labels = optional(any)

      nameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessKey = optional(string)

      annotations = optional(any)

      fullnameOverride = optional(string)

      clusterName = string

      nodeSelector = optional(any)

      affinity = optional(any)

      accessID = optional(string)

    })
    global = optional(object({

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.3.0-rt01"
}