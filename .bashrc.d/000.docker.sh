function purgeDockerImages() {
  docker images | grep '^08517' | awk '{ printf "%s:%s\n", $1,$2}' | xargs docker rmi -f
}
