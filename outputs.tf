output "mysql_root_password" {
  value = random_string.mysql_root_password.result
}

output "mysql_user" {
  value = var.mysql_user
}

output "mysql_password" {
  value = random_string.mysql_password.result
}

output "mysql_database" {
  value = var.mysql_user
}

output "mysql_host" {
  value = kubernetes_service.mysql.metadata[0].name
}

output "mysql_fqdn" {
  value = "${kubernetes_service.mysql.metadata[0].name}.${var.namespace}.svc.cluster.local"
}
