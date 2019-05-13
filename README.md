# Vegeta Docker
[![](https://images.microbadger.com/badges/image/peterevans/vegeta.svg)](https://microbadger.com/images/peterevans/vegeta)
[![CircleCI](https://circleci.com/gh/peter-evans/vegeta-docker/tree/master.svg?style=svg)](https://circleci.com/gh/peter-evans/vegeta-docker/tree/master)

Docker image for the [Vegeta](https://github.com/tsenart/vegeta) HTTP load testing tool.

## Supported tags and respective `Dockerfile` links

- [`6.5.0`, `6.5`, `latest`  (*6.5/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master)
- [`6.4.0`, `6.4`  (*6.4/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master/archive/6.4)
- [`6.3.0`, `6.3`  (*6.3/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master/archive/6.3)
- [`6.2.2`, `6.2`  (*6.2/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master/archive/6.2)
- [`6.1.0`, `6.1`  (*6.1/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master/archive/6.1)

For earlier versions see [releases](https://github.com/peter-evans/vegeta-docker/releases) and the available [tags on Docker Hub](https://hub.docker.com/r/peterevans/vegeta/tags/).

## Usage

To display help:
```bash
docker run --rm -i peterevans/vegeta
```
Example:
```bash
docker run --rm -i peterevans/vegeta sh -c \
"echo 'GET https://www.example.com' | vegeta attack -rate=10 -duration=30s | tee results.bin | vegeta report"
```
For full documentation see [Vegeta](https://github.com/tsenart/vegeta).

## Usage in Kubernetes

To display help:
```bash
kubectl run vegeta --rm --attach --restart=Never --image="peterevans/vegeta"
```
Example:
```bash
kubectl run vegeta --rm --attach --restart=Never --image="peterevans/vegeta" -- sh -c \
"echo 'GET https://www.example.com' | vegeta attack -rate=10 -duration=30s | tee results.bin | vegeta report"
```

## License

MIT License - see the [LICENSE](LICENSE) file for details
