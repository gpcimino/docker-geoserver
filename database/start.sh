docker stop postgis
docker rm postgis
docker run  --restart=unless-stopped --name postgis -e POSTGRES_PASSWORD=p0land17  -p 5432:5432 -d postgis
docker logs -f postgis
