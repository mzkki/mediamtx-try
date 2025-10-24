docker build -t nodejs-mediamtx:latest .
docker rm -f nodejs-mediamtx || true
docker run -d --name nodejs-mediamtx -p 3333:3000 nodejs-mediamtx:latest