// Configuração do Provider
variable "project" {
  description = "Projeto no Google Cloud"
  default = "stop-start-vm" 
  
}
variable "region" {
   description = "Região da Instância"
   default = "us-east1" 
}
variable "zone" {
    description = "Zona da instância" 
    default = "us-east1-b"
}
variable "disponibilidade" {
  description = "Disponibilidade por zona"
  default =  "REGIONAL"
}

// Configuarções da Instância do Banco de Dados

variable "nome_instancia" {
  description = "Nome da instancia" // Nome da instância do banco de dados
}

variable "database_version" {
    description = "Versão do banco de dados"
    default = "POSTGRES_13"
}

variable "configuracao_maquina" {
  description = "Tipo de máquina"
  default = "db-f1-micro"
}

variable "usuario" {
  description = "usuario"
  default = "root"
}

variable "ip_address" {
  description = "ip_address"
  default = "google_sql_database_instance.databasename.ip_address"
  
}
