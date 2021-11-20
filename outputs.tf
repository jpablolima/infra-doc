output "projeto" {
    value = "${var.project}"
    
}
output "regiao" {
    value = "${var.region}"
  
}
output "zona_da_instancia" {
    value = "${var.zone}"
}

output "disponibilidade_por_zona" {
  value = "${var.disponibilidade}"
}

output "id_intancia" {
  value = "${var.nome_instancia}"
}

output "database_version" {
  value = "${var.database_version}"
}

output "configuracao_maquina" {
  value  = "${var.configuracao_maquina}"
}

output "ip_adress" {
  value = "${google_sql_database_instance.databasename.ip_address}"
}

# output "sql_user" {
#     value = "${google_sql_user.users.name}"
#     sensitive = true
# }

# output "id_instancia" {
        
#    value = "${google_sql_database_instance.postgres13.settings[0].availability_type}"
   
# }
