pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code from GitHub...'
                git branch: 'main',
                    url: 'https://github.com/amolmistry/edureka-pro1.git'
            }
        }

        stage('Compile Code') {
            steps {
                echo 'Running mvn compile...'
                sh 'mvn compile'
            }
        }

        stage('Unit Test') {
            steps {
                echo 'Running mvn test...'
                sh 'mvn test'
            }
        }

        stage('Build') {
            steps {
                echo 'Packaging with Maven...'
                sh 'mvn package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh '''
                  cp target/XYZtechnologies-1.0.war XYZtechnologies-1.0.war
                  docker build -t amolmistry/edureka-pro1:v1 .
                '''
            }
        }

        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image...'
                sh 'docker push amolmistry/edureka-pro1:v1'
            }
        }

        stage('Deploy as container') {
            steps {
                echo 'Deploying container...'
                sh 'docker run -d --name edureka-pro1 -p 8080:8080 amolmistry/edureka-pro1:v1'
            }
        }
    }
}

