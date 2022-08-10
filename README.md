# recipe-api
Simple recipe api created with django rest framework.

## Features
* basic CRUD OPERATIONS
* user token authentication
* swagger auto generated documentation
* filtering system

## Requirements
* docker and docker compose

## Installation
Firstly, clone the repository from the github to your local folder with the following command:
```
git clone https://github.com/pietrykovsky/recipe-api.git
```

Next, create an `.env` file where the `docker-compose.yml` is and copy the content from the `.env.sample` file. Example:
```
`.env file`
DB_NAME=dbname
DB_USER=rootuser
DB_PASS=changeme
DJANGO_SECRET_KEY='changeme'
DJANGO_ALLOWED_HOSTS=127.0.0.1
```

In the same directory, where the `docker-compose.yml` is, run the following commands:
```
docker compose build
docker compose up
```

Now you can head over to http://127.0.0.1:8000/api/docs/

To stop the container run:
```
docker compose down
```