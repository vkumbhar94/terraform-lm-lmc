variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      account = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      nodeSelector = optional(any)

      labels = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      ignoreSSL = optional(bool)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

    }))
    lm-logs = object({

      image = object({

        tag = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      labels = optional(any)

      annotations = optional(any)

      env = optional(any)

      enabled = optional(bool)

      lm_access_id = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      lm_access_key = optional(string)

      affinity = optional(any)

      lm_company_name = optional(string)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

    })
    argus = object({

      accessKey = optional(string)

      clusterName = string

      nodeSelector = optional(any)

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
      enabled = optional(bool)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      filters = optional(any)

      collector = optional(object({

        useEA = optional(bool)

        annotations = optional(any)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        size = optional(string)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        probe = optional(object({

          enabled = optional(bool)

          startup = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

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
        replicas = optional(number)

        disableLightweightCollector = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      annotations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      imagePullSecrets = optional(any)

      accessID = optional(string)

      priorityClassName = optional(string)

      tolerations = optional(any)

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

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      clusterTreeParentID = optional(number)

      enableLegacyResourceTree = optional(bool)

      resourceContainerID = optional(number)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      affinity = optional(any)

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
      nameOverride = optional(string)

    })
    global = optional(object({

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rt01"
}