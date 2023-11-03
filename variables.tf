variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      nameOverride = optional(string)

      clusterName = string

      annotations = optional(any)

      lm_company_name = optional(string)

      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_id = optional(string)

      lm_access_key = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      env = optional(any)

    })
    argus = object({

      enableLegacyResourceTree = optional(bool)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      filters = optional(any)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      accessID = optional(string)

      clusterTreeParentID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

      }))
      accessKey = optional(string)

      account = optional(string)

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
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      fullnameOverride = optional(string)

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

      ignoreSSL = optional(bool)

      daemons = optional(object({

        watcher = optional(object({

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

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
      nameOverride = optional(string)

      nodeSelector = optional(any)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
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
      collector = optional(object({

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        annotations = optional(any)

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
        size = optional(string)

        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        version = optional(number)

        useEA = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      clusterName = string

      resourceContainerID = optional(number)

      enabled = optional(bool)

      labels = optional(any)

    })
    collectorset-controller = optional(object({

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      enabled = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      annotations = optional(any)

      labels = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      ignoreSSL = optional(bool)

    }))
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rc05"
}