variable "lm-container-configuration" {
  type = object({

    argus = object({

      accessID = optional(string)

      clusterName = string

      clusterTreeParentID = optional(number)

      probe = optional(object({

        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      enabled = optional(bool)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

      resourceContainerID = optional(number)

      lm = optional(object({

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

          k8spodlog = optional(any)

          k8sevent = optional(any)

        }))
        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
      }))
      filters = optional(any)

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
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      collector = optional(object({

        useEA = optional(bool)

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
        labels = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        version = optional(number)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        size = optional(string)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
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
        allowMultipleCollectorsOnNode = optional(bool)

      }))
      accessKey = optional(string)

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
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      affinity = optional(any)

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
      imagePullSecrets = optional(any)

      nameOverride = optional(string)

      account = optional(string)

      enableLegacyResourceTree = optional(bool)

      priorityClassName = optional(string)

      labels = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
    })
    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      affinity = optional(any)

      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      priorityClassName = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      annotations = optional(any)

      accessKey = optional(string)

      account = optional(string)

    }))
    lm-logs = object({

      accessKey = optional(string)

      nameOverride = optional(string)

      env = optional(any)

      account = optional(string)

      clusterName = string

      annotations = optional(any)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

      })
      accessID = optional(string)

      nodeSelector = optional(any)

      labels = optional(any)

      affinity = optional(any)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessKey = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.0.0-rc03"
}