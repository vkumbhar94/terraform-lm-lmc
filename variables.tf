variable "lm-container-configuration" {
  type = object({

    argus = object({

      account = optional(string)

      collector = optional(object({

        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        size = optional(string)

        useEA = optional(bool)

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
      }))
      nameOverride = optional(string)

      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

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

            nodes = optional(any)

            etcd = optional(any)

            cluster = optional(any)

          }))
        }))
      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      fullnameOverride = optional(string)

      clusterName = string

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      tolerations = optional(any)

      daemons = optional(object({

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
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      enableLegacyResourceTree = optional(bool)

      affinity = optional(any)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      ignoreSSL = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      enabled = optional(bool)

      accessID = optional(string)

      filters = optional(any)

      imagePullSecrets = optional(any)

      annotations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      log = optional(object({

        level = optional(string)

      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      resourceContainerID = optional(number)

    })
    collectorset-controller = optional(object({

      labels = optional(any)

      serviceAccount = optional(object({

        create = optional(bool)

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
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      enabled = optional(bool)

      fullnameOverride = optional(string)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      affinity = optional(any)

      priorityClassName = optional(string)

    }))
    lm-logs = object({

      lm_company_name = optional(string)

      clusterName = string

      labels = optional(any)

      lm_access_id = optional(string)

      lm_access_key = optional(string)

      enabled = optional(bool)

      env = optional(any)

      affinity = optional(any)

      image = object({

        tag = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      annotations = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

    })
    global = optional(object({

      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      account = optional(string)

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.1.0-rt01"
}