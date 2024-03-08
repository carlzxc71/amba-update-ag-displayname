## To run the container locally

```bash
az login
docker image build -t updateambaaddisplayname .
docker container run --rm -v "${HOME}/.azure":/root/.azure -e DISPLAYNAME="<your-displayname>" updateambaagdisplayname
```
