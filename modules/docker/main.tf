resource "docker_image" "result" {
  name = "us-central1-docker.pkg.dev/steam-circlet-442814-e1/terraform/result"
  build {
    context = "../../src/voting-services/result/"
    platform = "linux/amd64"
  }
}

resource "docker_registry_image" "result" {
  name          = docker_image.result.name
  keep_remotely = true
}

//WORKER

resource "docker_image" "worker" {
  name = "us-central1-docker.pkg.dev/steam-circlet-442814-e1/terraform/worker"
  build {
    context = "../../src/voting-services/worker/"
    platform = "linux/amd64"
  }
}

resource "docker_registry_image" "worker" {
  name          = docker_image.worker.name
  keep_remotely = true
}

//VOTE

resource "docker_image" "vote" {
  name = "us-central1-docker.pkg.dev/steam-circlet-442814-e1/terraform/vote"
  build {
    context = "../../src/voting-services/vote/"
    platform = "linux/amd64"
  }
}

resource "docker_registry_image" "vote" {
  name          = docker_image.vote.name
  keep_remotely = true
}

//SEED-DATA

resource "docker_image" "seed" {
  name = "us-central1-docker.pkg.dev/steam-circlet-442814-e1/terraform/seed"
  build {
    context = "../../src/voting-services/seed-data/"
    platform = "linux/amd64"
  }
}

resource "docker_registry_image" "seed" {
  name          = docker_image.seed.name
  keep_remotely = true
}