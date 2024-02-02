variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      nameOverride = optional(string)

      env = optional(any)

      enabled = optional(bool)

      lm_access_id = optional(string)

      lm_company_name = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      lm_access_key = optional(string)

      lm_bearer_token = optional(string)

      annotations = optional(any)

      nodeSelector = optional(any)

      affinity = optional(any)

      clusterName = string

      labels = optional(any)

      fullnameOverride = optional(string)

    })
    argus = object({

      ignoreSSL = optional(bool)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      clusterTreeParentID = optional(number)

      resourceContainerID = optional(number)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

      accessID = optional(string)

      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      annotations = optional(any)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      enabled = optional(bool)

      nodeSelector = optional(any)

      tolerations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      filters = optional(any)

      account = optional(string)

      enableLegacyResourceTree = optional(bool)

      labels = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
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

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      accessKey = optional(string)

      priorityClassName = optional(string)

      collector = optional(object({

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        version = optional(number)

        useEA = optional(bool)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        env = optional(any)

        replicas = optional(number)

        annotations = optional(any)

        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        size = optional(string)

        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

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

      }))
      clusterName = string

      log = optional(object({

        level = optional(string)

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
      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

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
    })
    collectorset-controller = optional(object({

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      nameOverride = optional(string)

      affinity = optional(any)

      labels = optional(any)

      annotations = optional(any)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      priorityClassName = optional(string)

      accessID = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      nodeSelector = optional(any)

    }))
    global = optional(object({

      clusterName = string

      account = optional(string)

      accessKey = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      userDefinedSecret = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "7.0.0-rc02"
}