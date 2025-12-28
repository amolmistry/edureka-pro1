pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code from GitHub...'
                git branch: 'main',
                    url: 'https://github.com/amolmistry/edureka-pro1.git'
                // If you use credentials, add: credentialsId: 'your-cred-id'
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

        stage('Package Code') {
            steps {
                echo 'Running mvn package...'
                sh 'mvn package'
            }
        }
    }
}

