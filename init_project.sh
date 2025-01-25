#!/bin/bash

# Cek apakah nama proyek diberikan
if [ -z "$1" ]; then
    echo "Usage: init_project <project-name>"
    exit 1
fi

PROJECT_NAME=$1

echo "Initializing Golang Clean Architecture project: $PROJECT_NAME..."

# Buat direktori utama
mkdir -p $PROJECT_NAME/{cmd,config,internal/{entity,usecase,repository,delivery/{http,middleware},config,utils},migrations,docs}

# Buat file kosong generik
touch $PROJECT_NAME/{cmd/main.go,config/config.go,go.mod}
touch $PROJECT_NAME/internal/entity/sample_entity.go
touch $PROJECT_NAME/internal/usecase/sample_usecase.go
touch $PROJECT_NAME/internal/repository/sample_repo.go
touch $PROJECT_NAME/internal/delivery/http/sample_handler.go
touch $PROJECT_NAME/internal/delivery/middleware/auth_middleware.go
touch $PROJECT_NAME/internal/config/db.go
touch $PROJECT_NAME/internal/utils/{jwt.go,hash.go,response.go}
touch $PROJECT_NAME/migrations/README.md
touch $PROJECT_NAME/docs/README.md

echo "Project structure for $PROJECT_NAME created successfully!"
