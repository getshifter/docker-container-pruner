# docker-container-pruner

1. docker container prune
2. sleep


## Usage

```
$ docker run -d  \
  -v /var/run/docker.sock:/var/run/docker.sock \
  docker.io/getshifter/docker-container-pruner
```

swarm global mode

```
docker service create --name docker-container-pruner \
  --mode global \
  --detach=true \
  --constraint 'node.role == workernode' \
  --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock,readonly=true \
  docker.io/getshifter/docker-container-pruner:latest
```


### Envs

- `PRUNE_BEFORE`: used by filter => `--filter "until=${prune_before}"`. (default: 2h)
- `INTERVAL`: sleep. (default: 1h)
