## To run the container locally

```bash
az login
docker image build -t updateambaaddisplayname .
docker container run --rm -v "${HOME}/.azure":/root/.azure -e DISPLAYNAME="<your-displayname>" updateambaagdisplayname
```

## Consume the container from Github Packages

```bash
docker pull ghcr.io/carlzxc71/updateambaaddisplayname:2024.03.1
docker container run --rm -v "${HOME}/.azure":/root/.azure -e DISPLAYNAME="<your-displayname>" ghcr.io/carlzxc71/updateambaaddisplayname:2024.03.1
```
