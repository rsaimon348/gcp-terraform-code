output "sql_instance_ip" {
    value = google_sql_database_instance.instance.first_ip_address 
}