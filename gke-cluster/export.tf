
// export the cluster ca certificate to a cloud storage bucket
resource "google_storage_bucket_object" "cluster_cert" {
  name   = "cluster-cert"
  content = "${google_container_cluster.ws9kiam-cluster.master_auth[0].cluster_ca_certificate}"
  #bucket = "sca-project"
  bucket = "db-ws9kiam-admin"
}


// export the cluster endpoint to a cloud storage bucket
resource "google_storage_bucket_object" "cluster_endpoint" {
  name   = "cluster-endpoint"
  content = "${google_container_cluster.ws9kiam-cluster.endpoint}"
  #bucket = "sca-project"
  bucket = "db-ws9kiam-admin"
}
