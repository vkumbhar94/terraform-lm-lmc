variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      enabled = optional(bool)

      lm_access_key = optional(string)

      lm_company_name = optional(string)

      env = optional(any)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      image = object({

        tag = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      lm_access_id = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      clusterName = string

      labels = optional(any)

    })
    argus = object({

      account = optional(string)

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
      enableLegacyResourceTree = optional(bool)

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      annotations = optional(any)

      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      accessID = optional(string)

      clusterTreeParentID = optional(number)

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
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

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
      filters = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      clusterName = string

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

      collector = optional(object({

        size = optional(string)

        env = optional(any)

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
        labels = optional(any)

        version = optional(number)

        useEA = optional(bool)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

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

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      labels = optional(any)

      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      enabled = optional(bool)

      accessKey = optional(string)

    })
    collectorset-controller = optional(object({

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

      enabled = optional(bool)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      affinity = optional(any)

      annotations = optional(any)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

    }))
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      account = optional(string)

      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessID = optional(string)

      accessKey = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rc04"
}