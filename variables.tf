variable "lm-container-configuration" {
  type = object({

    argus = object({

      fullnameOverride = optional(string)

      accessID = optional(string)

      account = optional(string)

      clusterTreeParentID = optional(number)

      imagePullSecrets = optional(any)

      enabled = optional(bool)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

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
      filters = optional(any)

      nodeSelector = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      collector = optional(object({

        labels = optional(any)

        replicas = optional(number)

        size = optional(string)

        annotations = optional(any)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        env = optional(any)

        disableLightweightCollector = optional(bool)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        version = optional(number)

        useEA = optional(bool)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

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
      accessKey = optional(string)

      ignoreSSL = optional(bool)

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

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      resourceContainerID = optional(number)

      clusterName = string

    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      annotations = optional(any)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      ignoreSSL = optional(bool)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

    }))
    lm-logs = object({

      nodeSelector = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      annotations = optional(any)

      env = optional(any)

      accessKey = optional(string)

      clusterName = string

      labels = optional(any)

      affinity = optional(any)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      account = optional(string)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        registry = optional(string)

      })
      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.5.0-rc01"
}