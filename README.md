terraform-k8s-mysql-server
-----

This module provides a quick MySQL database in Kubernetes.

Examples
----------

    module "mysql" {
        source = "justinm/k8s/mysql-server"
        version = "5.7"
        
        name = "project-name"
        namespace = ""
        mysql_storage_size = "10Gi"
        mysql_user = "dbuser"
    }
