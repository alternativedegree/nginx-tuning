mvn clean package
docker build -t mytestserver:latest .
cd nginx
docker build -t mynginxserver:latest .
cd ..
docker-compose down
docker-compose up -d
