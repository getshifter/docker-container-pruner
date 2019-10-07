# docker-container-pruner

1. docker container prune
2. sleep


## Usage

```
$ docker run -it --rm  \
  -v /var/run/docker.sock:/var/run/docker.sock \
  docker.io/getshifter/docker-container-pruner
```

### Envs

- `PRUNE_BEFORE`: used by filter => `--filter "until=${prune_before}"`. (default: 2h)
- `INTERVAL`: sleep. (default: 1h)
