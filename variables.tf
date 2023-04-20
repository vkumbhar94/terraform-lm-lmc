variable "lm-container-configuration" {
  type = object({

    argus = object({

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
      account = optional(string)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      affinity = optional(any)

      collector = optional(object({

        replicas = optional(number)

        version = optional(number)

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        env = optional(any)

        size = optional(string)

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
        annotations = optional(any)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      accessID = optional(string)

      tolerations = optional(any)

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
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      enabled = optional(bool)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      resourceContainerID = optional(number)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      accessKey = optional(string)

      clusterName = string

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      filters = optional(any)

      labels = optional(any)

      fullnameOverride = optional(string)

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

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

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
    })
    collectorset-controller = optional(object({

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

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

      accessID = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      nodeSelector = optional(any)

    }))
    lm-logs = object({

      enabled = optional(bool)

      image = object({

        name = optional(string)

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      nodeSelector = optional(any)

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      env = optional(any)

      affinity = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      labels = optional(any)

      fullnameOverride = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      image = object({

        registry = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "4.0.0-rc02"
}