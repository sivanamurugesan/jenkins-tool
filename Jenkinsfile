pipeline {
    agent any

    environment {
        DOCKER_HUB_USERNAME = credentials("docker-hub-username") 
        DOCKER_HUB_PASSWORD = credentials("docker-hub-password")
        DOCKER_IMAGE_NAME = "sivanamurugesan/jenkins:v1.0"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Define your Docker image build commands here
                    def dockerBuildCommand = "docker build -t ${DOCKER_IMAGE_NAME} ."

                    // Run the Docker build command
                    sh dockerBuildCommand
                }
            }
        }

        stage('Publish Docker Image') {
            when {
                changeset "Dockerfile"
            }
            steps {
                script {
                    // Authenticate with Docker Hub
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_HUB_USERNAME, DOCKER_HUB_PASSWORD) {
                        // Push the Docker image to Docker Hub
                        sh "docker push ${DOCKER_IMAGE_NAME}"
                    }
                }
            }
        }
    }
}

