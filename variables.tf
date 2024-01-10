variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      affinity = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      account = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
    }))
    lm-logs = object({

      annotations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      image = object({

        tag = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      lm_access_id = optional(string)

      affinity = optional(any)

      enabled = optional(bool)

      labels = optional(any)

      lm_access_key = optional(string)

      lm_company_name = optional(string)

      clusterName = string

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
    })
    argus = object({

      daemons = optional(object({

        watcher = optional(object({

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
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
      filters = optional(any)

      imagePullSecrets = optional(any)

      account = optional(string)

      affinity = optional(any)

      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
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
      enabled = optional(bool)

      annotations = optional(any)

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
      collector = optional(object({

        labels = optional(any)

        version = optional(number)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        env = optional(any)

        size = optional(string)

        useEA = optional(bool)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        annotations = optional(any)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      labels = optional(any)

      resourceContainerID = optional(number)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterName = string

      enableLegacyResourceTree = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      ignoreSSL = optional(bool)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
    })
    global = optional(object({

      account = optional(string)

      clusterName = string

      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.2.1-rc02"
}