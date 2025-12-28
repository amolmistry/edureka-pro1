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
	stage ('Build')
	{
		steps
		{
			sh 'mvn package'
		}
        }
	stage('Build Docker Image') 
	{
    		steps 
		{
        		echo 'Building Docker image...'
        		sh 'cp target/XYZtechnologies-1.0.war XYZtechnologies-1.0.war'
          		sh 'docker build -t amolmistry/edureka-pro1:v1 .'
    }
}
	stage('Push Docker Image') 
	{
    		steps 
		{
        		echo 'Pushing Docker image...'
        		sh 'docker push amolmistry/edureka-pro1:v1'
    		}	
	}	
    	stage ('Deploy as container')
	{
		steps
		{
			sh 'docker run -p amolmistry/edureka-pro1:v1'
		}
}
}
}

