// export the cloud sql instance connection name to a cloud storage bucket
resource "google_storage_bucket_object" "db_connection" {
  name   = "connection-name"
  content = "${google_sql_database_instance.primary.connection_name}"
  bucket = "db-ws9kiam-admin"
}


// export the database user name to a cloud storage bucket
resource "google_storage_bucket_object" "db_user" {
  #name   = "db_user"
  name   = "admin"
  content = "${google_sql_user.admin_user.name}"
  bucket = "db-ws9kiam-admin"
}


// export the database user password to a cloud storage bucket
resource "google_storage_bucket_object" "db_pass" {
  #name   = "db_pass"
  name   = "admin"
  content = "${google_sql_user.admin_user.password}"
  bucket = "db-ws9kiam-admin"
}


// export the database name to a cloud storage bucket
resource "google_storage_bucket_object" "db" {
  name   = "db"
  content = "${google_sql_database.database.name}"
  bucket = "db-ws9kiam-admin"
}
