docker build -t nginx-example .
docker run --name fprinter2 -p 80:80 -d nginx-example
