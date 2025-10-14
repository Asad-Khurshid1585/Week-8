pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Asad-Khurshid1585/Week-8.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    docker.build('my-flask-app')
                }
            }
        }
        stage('Test') {
            steps {
                // Add test commands if any, e.g., python -m pytest
                echo 'Running tests...'
                // For now, just echo
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.run('-d -p 5000:5000 --name flask-app my-flask-app')
                }
            }
        }
    }
}