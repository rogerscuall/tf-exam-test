resource "docker_container" "test" {
     name              = "hashicorp-learn"
     image             = "sha256:2622e6cca7ebbb6e310743abce3fc47335393e79171b9d76ba9d4f446ce7b163"

    # command           = [
    #     "nginx",
    #     "-g",
    #     "daemon off;",
    # ]
    # cpu_shares        = 0
    # dns               = []
    # dns_opts          = []
    # dns_search        = []
#     entrypoint        = [
#         "/docker-entrypoint.sh",
#     ]
#     group_add         = []
#     hostname          = "82a38a378f11"
    
#     ipc_mode          = "private"
#  #   links             = []
#     log_driver        = "json-file"
#     log_opts          = {}
#     max_retry_count   = 0
#     memory            = 0
#     memory_swap       = 0
#     network_mode      = "default"
#     privileged        = false
#     publish_all_ports = false
#     read_only         = false
#     restart           = "no"
#     rm                = false
#     shm_size          = 64
#     sysctls           = {}
#     tmpfs             = {}
    env = []
    ports {
        external = 8080
        internal = 80
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

