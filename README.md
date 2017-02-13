# Vegeta Docker
Docker image for the [Vegeta](https://github.com/tsenart/vegeta) HTTP load testing tool.

[![](https://images.microbadger.com/badges/image/peterevans/vegeta-docker.svg)](https://microbadger.com/images/peterevans/vegeta-docker "Get your own image badge on microbadger.com")

## Supported tags and respective `Dockerfile` links

- [`1.0.0`, `1.0`, `latest`  (*1.0/Dockerfile*)](https://github.com/peter-evans/vegeta-docker/tree/master/1.0)

## Usage

To display help:
```bash
docker run --rm -i peterevans/vegeta-docker
```
Example:
```bash
echo "GET https://example.com" | \
docker run --rm -i peterevans/vegeta-docker attack -rate=10 -duration=30s | \
docker run --rm -i peterevans/vegeta-docker report
```
For full documentation see [Vegeta](https://github.com/tsenart/vegeta).

## License

MIT License - see the [LICENSE](LICENSE) file for details
