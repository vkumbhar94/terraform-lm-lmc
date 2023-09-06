variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_company_name = optional(string)

      fullnameOverride = optional(string)

      affinity = optional(any)

      clusterName = string

      nameOverride = optional(string)

      annotations = optional(any)

      enabled = optional(bool)

      lm_access_id = optional(string)

      lm_access_key = optional(string)

      labels = optional(any)

    })
    argus = object({

      labels = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

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
      imagePullSecrets = optional(any)

      account = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      log = optional(object({

        level = optional(string)

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

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
        }))
      }))
      filters = optional(any)

      collector = optional(object({

        version = optional(number)

        labels = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        annotations = optional(any)

        disableLightweightCollector = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        env = optional(any)

        replicas = optional(number)

        useEA = optional(bool)

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
        size = optional(string)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      tolerations = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      clusterName = string

      affinity = optional(any)

      ignoreSSL = optional(bool)

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
      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      enableLegacyResourceTree = optional(bool)

      priorityClassName = optional(string)

      resourceContainerID = optional(number)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      nameOverride = optional(string)

    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      ignoreSSL = optional(bool)

      accessID = optional(string)

      account = optional(string)

      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      labels = optional(any)

      enabled = optional(bool)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

    }))
    global = optional(object({

      clusterName = string

      accessKey = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      account = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.1.1-rc02"
}