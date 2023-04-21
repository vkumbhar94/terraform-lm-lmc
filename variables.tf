variable "lm-container-configuration" {
  type = object({

    argus = object({

      priorityClassName = optional(string)

      fullnameOverride = optional(string)

      account = optional(string)

      labels = optional(any)

      accessID = optional(string)

      clusterName = string

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
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
      nameOverride = optional(string)

      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      tolerations = optional(any)

      ignoreSSL = optional(bool)

      filters = optional(any)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

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
      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      imagePullSecrets = optional(any)

      nodeSelector = optional(any)

      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      collector = optional(object({

        disableLightweightCollector = optional(bool)

        size = optional(string)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        replicas = optional(number)

        version = optional(number)

        useEA = optional(bool)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        allowMultipleCollectorsOnNode = optional(bool)

        labels = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      probe = optional(object({

        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

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
    })
    collectorset-controller = optional(object({

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      annotations = optional(any)

      accessKey = optional(string)

      account = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      nodeSelector = optional(any)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

    }))
    lm-logs = object({

      accessID = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      account = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      accessKey = optional(string)

      clusterName = string

      labels = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      annotations = optional(any)

    })
    global = optional(object({

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.0.0-rc03"
}