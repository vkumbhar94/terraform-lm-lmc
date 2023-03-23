variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      image = object({

        tag = optional(string)

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      account = optional(string)

      clusterName = string

      affinity = optional(any)

      enabled = optional(bool)

      nodeSelector = optional(any)

      accessID = optional(string)

      labels = optional(any)

      annotations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    argus = object({

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

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      resourceContainerID = optional(number)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      log = optional(object({

        level = optional(string)

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

          alerting = optional(object({

            disable = optional(any)

          }))
          globalDeleteAfterDuration = optional(string)

        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      nodeSelector = optional(any)

      filters = optional(any)

      collector = optional(object({

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

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
        version = optional(number)

        useEA = optional(bool)

        labels = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        annotations = optional(any)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        disableLightweightCollector = optional(bool)

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

      clusterName = string

      tolerations = optional(any)

      fullnameOverride = optional(string)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      labels = optional(any)

    })
    collectorset-controller = optional(object({

      affinity = optional(any)

      enabled = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      tolerations = optional(any)

      labels = optional(any)

      accessID = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

    }))
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "3.4.0-rc02"
}