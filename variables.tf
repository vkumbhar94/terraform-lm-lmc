variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      fullnameOverride = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      annotations = optional(any)

      env = optional(any)

      enabled = optional(bool)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

      })
      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      account = optional(string)

      nameOverride = optional(string)

    })
    argus = object({

      imagePullSecrets = optional(any)

      accessKey = optional(string)

      labels = optional(any)

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
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      resourceContainerID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      daemons = optional(object({

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
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
      }))
      filters = optional(any)

      clusterTreeParentID = optional(number)

      fullnameOverride = optional(string)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      collector = optional(object({

        labels = optional(any)

        env = optional(any)

        annotations = optional(any)

        disableLightweightCollector = optional(bool)

        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

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

        useEA = optional(bool)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

      }))
      ignoreSSL = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      tolerations = optional(any)

      annotations = optional(any)

      priorityClassName = optional(string)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      account = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      accessID = optional(string)

      clusterName = string

    })
    collectorset-controller = optional(object({

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      accessKey = optional(string)

      account = optional(string)

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
      tolerations = optional(any)

      fullnameOverride = optional(string)

      affinity = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

    }))
    global = optional(object({

      account = optional(string)

      clusterName = string

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.0.0-rt01"
}