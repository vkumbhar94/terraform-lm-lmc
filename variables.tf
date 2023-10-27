variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      annotations = optional(any)

      enabled = optional(bool)

      accessKey = optional(string)

      account = optional(string)

      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      labels = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
    }))
    lm-logs = object({

      labels = optional(any)

      fullnameOverride = optional(string)

      affinity = optional(any)

      lm_company_name = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      lm_access_key = optional(string)

      annotations = optional(any)

      env = optional(any)

      enabled = optional(bool)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_id = optional(string)

      clusterName = string

      nameOverride = optional(string)

      nodeSelector = optional(any)

    })
    argus = object({

      priorityClassName = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      imagePullSecrets = optional(any)

      accessID = optional(string)

      account = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
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
      nameOverride = optional(string)

      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterName = string

      annotations = optional(any)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      filters = optional(any)

      clusterTreeParentID = optional(number)

      affinity = optional(any)

      tolerations = optional(any)

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
      enabled = optional(bool)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      collector = optional(object({

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        annotations = optional(any)

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
        useEA = optional(bool)

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        size = optional(string)

        labels = optional(any)

        env = optional(any)

        disableLightweightCollector = optional(bool)

      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      lm = optional(object({

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
        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
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
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      userDefinedSecret = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rc02"
}