variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      enabled = optional(bool)

      accessID = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      labels = optional(any)

      account = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      nameOverride = optional(string)

    }))
    lm-logs = object({

      lm_access_id = optional(string)

      clusterName = string

      env = optional(any)

      nodeSelector = optional(any)

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_company_name = optional(string)

      lm_access_key = optional(string)

      annotations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      labels = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      lm_bearer_token = optional(string)

    })
    argus = object({

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
      nodeSelector = optional(any)

      affinity = optional(any)

      ignoreSSL = optional(bool)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      enableLegacyResourceTree = optional(bool)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      accessKey = optional(string)

      labels = optional(any)

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
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      account = optional(string)

      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      tolerations = optional(any)

      filters = optional(any)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      resourceContainerID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      monitoring = optional(object({

        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      clusterName = string

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

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
      collector = optional(object({

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        useEA = optional(bool)

        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
        labels = optional(any)

        replicas = optional(number)

        annotations = optional(any)

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

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        version = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        env = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        disableLightweightCollector = optional(bool)

      }))
      imagePullSecrets = optional(any)

      collectorsetcontroller = optional(object({

        port = optional(number)

        address = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      clusterName = string

      accessID = optional(string)

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "7.0.1-rc01"
}