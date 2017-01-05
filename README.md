# Vegeta Docker
Docker image for the [Vegeta](https://github.com/tsenart/vegeta) HTTP load testing tool.

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
