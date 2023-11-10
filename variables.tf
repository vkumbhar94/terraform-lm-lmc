variable "lm-container-configuration" {
  type = object({

    argus = object({

      filters = optional(any)

      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      accessID = optional(string)

      priorityClassName = optional(string)

      clusterName = string

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
      collector = optional(object({

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

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
        version = optional(number)

        size = optional(string)

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
        replicas = optional(number)

        env = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        annotations = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        useEA = optional(bool)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      account = optional(string)

      accessKey = optional(string)

      nodeSelector = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

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
      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      tolerations = optional(any)

      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      affinity = optional(any)

    })
    collectorset-controller = optional(object({

      enabled = optional(bool)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      accessID = optional(string)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      labels = optional(any)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      accessKey = optional(string)

      affinity = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      ignoreSSL = optional(bool)

    }))
    lm-logs = object({

      fullnameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      clusterName = string

      labels = optional(any)

      lm_access_key = optional(string)

      lm_access_id = optional(string)

      enabled = optional(bool)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      nameOverride = optional(string)

      lm_company_name = optional(string)

      annotations = optional(any)

    })
    global = optional(object({

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.1.0-rc01"
}