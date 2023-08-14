variable "lm-container-configuration" {
  type = object({

    argus = object({

      clusterTreeParentID = optional(number)

      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      affinity = optional(any)

      labels = optional(any)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

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
      enabled = optional(bool)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      ignoreSSL = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      collector = optional(object({

        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
          readiness = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        env = optional(any)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        labels = optional(any)

        replicas = optional(number)

        version = optional(number)

        disableLightweightCollector = optional(bool)

      }))
      imagePullSecrets = optional(any)

      accessKey = optional(string)

      tolerations = optional(any)

      annotations = optional(any)

      resourceContainerID = optional(number)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      accessID = optional(string)

      priorityClassName = optional(string)

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
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      clusterName = string

      enableLegacyResourceTree = optional(bool)

      nodeSelector = optional(any)

    })
    collectorset-controller = optional(object({

      labels = optional(any)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      tolerations = optional(any)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      accessID = optional(string)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      annotations = optional(any)

    }))
    lm-logs = object({

      annotations = optional(any)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      affinity = optional(any)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      fullnameOverride = optional(string)

      enabled = optional(bool)

      account = optional(string)

      labels = optional(any)

      nameOverride = optional(string)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        registry = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.4.0-rt01"
}