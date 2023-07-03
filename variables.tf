variable "lm-container-configuration" {
  type = object({

    argus = object({

      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      monitoring = optional(object({

        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      accessKey = optional(string)

      clusterName = string

      collector = optional(object({

        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

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
        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        version = optional(number)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      filters = optional(any)

      accessID = optional(string)

      daemons = optional(object({

        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
        watcher = optional(object({

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
      }))
      enableLegacyResourceTree = optional(bool)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      fullnameOverride = optional(string)

      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      rbac = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

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
      affinity = optional(any)

      account = optional(string)

      nodeSelector = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      annotations = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      priorityClassName = optional(string)

    })
    collectorset-controller = optional(object({

      affinity = optional(any)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      tolerations = optional(any)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      labels = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      account = optional(string)

      ignoreSSL = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
    }))
    lm-logs = object({

      labels = optional(any)

      nodeSelector = optional(any)

      fullnameOverride = optional(string)

      env = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      account = optional(string)

      clusterName = string

      accessKey = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      affinity = optional(any)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
    })
    global = optional(object({

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.2.0-rt01"
}