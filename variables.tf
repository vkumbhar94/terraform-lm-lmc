variable "lm-container-configuration" {
  type = object({

    argus = object({

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      labels = optional(any)

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
      imagePullSecrets = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      probe = optional(object({

        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      account = optional(string)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      filters = optional(any)

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
      nameOverride = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      tolerations = optional(any)

      fullnameOverride = optional(string)

      collector = optional(object({

        replicas = optional(number)

        annotations = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        size = optional(string)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        probe = optional(object({

          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          enabled = optional(bool)

          startup = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
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
        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        useEA = optional(bool)

      }))
      resourceContainerID = optional(number)

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

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
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
      affinity = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

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
      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      nameOverride = optional(string)

      priorityClassName = optional(string)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      annotations = optional(any)

      fullnameOverride = optional(string)

    }))
    lm-logs = object({

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      accessKey = optional(string)

      account = optional(string)

      accessID = optional(string)

      affinity = optional(any)

      nodeSelector = optional(any)

      enabled = optional(bool)

      clusterName = string

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

    })
    global = optional(object({

      image = object({

        pullPolicy = optional(string)

        registry = optional(string)

        repository = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.0.0-rc01"
}