
if [ "$1" == "dev" ] || [ "$1" == "test" ]; then
    echo "Building application using dev environment file"
    docker-compose --env-file environment/.dev.env up -d
elif [ "$1" == "prod" ] || [ "$1" == "production" ]; then
    echo "Building application using production environment file"
    docker-compose --env-file environment/.prod.env up -d
fi