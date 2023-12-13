variable "lm-container-configuration" {
  type = object({

    argus = object({

      ignoreSSL = optional(bool)

      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      resourceContainerID = optional(number)

      fullnameOverride = optional(string)

      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

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
      clusterName = string

      clusterTreeParentID = optional(number)

      enableLegacyResourceTree = optional(bool)

      nodeSelector = optional(any)

      affinity = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      enabled = optional(bool)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      filters = optional(any)

      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessID = optional(string)

      collector = optional(object({

        replicas = optional(number)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
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
        annotations = optional(any)

        env = optional(any)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

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
        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        size = optional(string)

        useEA = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      accessKey = optional(string)

      tolerations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      labels = optional(any)

      account = optional(string)

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
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

    }))
    lm-logs = object({

      nameOverride = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      lm_access_key = optional(string)

      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      lm_access_id = optional(string)

      annotations = optional(any)

      env = optional(any)

      clusterName = string

      fullnameOverride = optional(string)

      image = object({

        pullPolicy = optional(string)

        tag = optional(string)

        repository = optional(string)

      })
      lm_company_name = optional(string)

      affinity = optional(any)

    })
    global = optional(object({

      userDefinedSecret = optional(string)

      clusterName = string

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.2.0-rc03"
}