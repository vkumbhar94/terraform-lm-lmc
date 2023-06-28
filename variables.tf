variable "lm-container-configuration" {
  type = object({

    argus = object({

      ignoreSSL = optional(bool)

      imagePullSecrets = optional(any)

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
      affinity = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

      daemons = optional(object({

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
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
      }))
      collector = optional(object({

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        size = optional(string)

        annotations = optional(any)

        disableLightweightCollector = optional(bool)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        labels = optional(any)

        env = optional(any)

      }))
      enabled = optional(bool)

      clusterName = string

      annotations = optional(any)

      resourceContainerID = optional(number)

      clusterTreeParentID = optional(number)

      enableLegacyResourceTree = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      account = optional(string)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      fullnameOverride = optional(string)

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

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      nameOverride = optional(string)

      accessKey = optional(string)

      nodeSelector = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
    })
    collectorset-controller = optional(object({

      labels = optional(any)

      fullnameOverride = optional(string)

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
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      priorityClassName = optional(string)

    }))
    lm-logs = object({

      labels = optional(any)

      fullnameOverride = optional(string)

      env = optional(any)

      account = optional(string)

      accessKey = optional(string)

      clusterName = string

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessID = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      annotations = optional(any)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      accessKey = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.2.0-rc01"
}