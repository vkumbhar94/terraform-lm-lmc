variable "lm-container-configuration" {
  type = object({

    argus = object({

      affinity = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      accessKey = optional(string)

      labels = optional(any)

      probe = optional(object({

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
        enabled = optional(bool)

      }))
      ignoreSSL = optional(bool)

      daemons = optional(object({

        worker = optional(object({

          poolSize = optional(number)

        }))
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
      }))
      filters = optional(any)

      overview = optional(object({

        duration = optional(string)

        enable = optional(bool)

      }))
      clusterName = string

      enableLegacyResourceTree = optional(bool)

      nodeSelector = optional(any)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      nameOverride = optional(string)

      enabled = optional(bool)

      accessID = optional(string)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

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
      tolerations = optional(any)

      collector = optional(object({

        replicas = optional(number)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        version = optional(number)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
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
        size = optional(string)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        allowMultipleCollectorsOnNode = optional(bool)

      }))
      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      fullnameOverride = optional(string)

      clusterTreeParentID = optional(number)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      resourceContainerID = optional(number)

    })
    collectorset-controller = optional(object({

      enabled = optional(bool)

      accessID = optional(string)

      affinity = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      accessKey = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      labels = optional(any)

    }))
    lm-logs = object({

      enabled = optional(bool)

      lm_access_key = optional(string)

      labels = optional(any)

      annotations = optional(any)

      fullnameOverride = optional(string)

      lm_company_name = optional(string)

      nameOverride = optional(string)

      env = optional(any)

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
      nodeSelector = optional(any)

      lm_access_id = optional(string)

      clusterName = string

    })
    global = optional(object({

      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.1.0-rc02"
}