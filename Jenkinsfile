pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Asad-Khurshid1585/Week-8.git'
            }
        }
        stage('Build') {
            steps {
                sh 'pip install --break-system-packages flask flask-sqlalchemy'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add test commands here if available
            }
        }
        stage('Deploy') {
            steps {
                sh 'python3 app.py &'
            }
        }
    }
}