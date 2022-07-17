
variable "roles" {
  type = list(string)
  default = [
    "roles/artifactregistry.reader",
    "roles/storage.objectViewer",
    "roles/servicemanagement.serviceController",
    "roles/logging.logWriter",
    "roles/monitoring.admin",
    "roles/cloudtrace.agent"
  ]
  description = "list of roles for the node pool service account."
}

variable "project_id" {
  type        = string
  description = "current project_id"
  default     = "gkepoc-290118"
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "cluster_name" {
  type = string
  description = "name of cluster to be created"
  default     = "ws9kiam-dev-cluster"
}

variable "cluster_zone" {
  type = string
  description = "zone in which to create the cluster"
}

variable "master_version" {
  type = string 
  #default = "1.20.10-gke.301"
  default = "1.23.7-gke.1400"
  description = "cluster master version"
}

#variable "node_zones" {
#  type = list(string)
#  description = "location of nodes in nodepool/cluster"
#}

variable "node_zones" {
  type        = list(string)
  description = "location of nodes in nodepool/cluster"
  default     = [ "us-central1-f", "us-central1-a" ]
}

variable "machine_type" {
  type = string
  default = "g1-small"
  description = "type of nodes in node pool"

}

// get data about existing network
#data "google_compute_network" "default_vpc" {
#  name = "default"
#}

