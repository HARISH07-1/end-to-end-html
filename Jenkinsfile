pipeline {
    agent any

    environment {
        IMAGE_NAME = "html-app"
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                bat 'scripts\\test.bat'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Deploy') {
            steps {
                bat 'scripts\\deploy.bat'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline executed successfully on Windows!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
