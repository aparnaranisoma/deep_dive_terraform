resource "google_compute_instance" "myname" {
    name         = "myvm-instances"
    machine_type = "n1-standard-1" 
    zone         = "europe-west1" 
    boot_disk{
        initialize_params{
           image = "debian-cloud/debian-11" 
        }
    }
    network_interface {
      network = "default"
      access_config {

      }
    }
}
