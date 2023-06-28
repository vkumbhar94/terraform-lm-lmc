variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

      })
      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      accessID = optional(string)

      annotations = optional(any)

      account = optional(string)

      labels = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      affinity = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      clusterName = string

    })
    argus = object({

      clusterTreeParentID = optional(number)

      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      collector = optional(object({

        replicas = optional(number)

        useEA = optional(bool)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        annotations = optional(any)

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
        env = optional(any)

        version = optional(number)

        size = optional(string)

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
        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

      }))
      nameOverride = optional(string)

      affinity = optional(any)

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
      tolerations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

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

            nodes = optional(any)

            etcd = optional(any)

            cluster = optional(any)

          }))
        }))
      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      resourceContainerID = optional(number)

      filters = optional(any)

      account = optional(string)

      clusterName = string

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
      accessKey = optional(string)

      enableLegacyResourceTree = optional(bool)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      accessID = optional(string)

      priorityClassName = optional(string)

      labels = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
    })
    collectorset-controller = optional(object({

      enabled = optional(bool)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      accessID = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

    }))
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.2.0-rc02"
}