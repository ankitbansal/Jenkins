pipeline {
    agent any 
    stages {
        stage('Build Image') {
            agent {
                agent { dockerfile true }
            }
            steps {
                sh 'ruby --version' 
            }
        }
        stage('Publish Image') {
            steps {
                echo 'Hello world!' 
            }
        }
        stage('Deploy Application') {
            steps {
                echo 'Hello world!' 
            }
        }
        stage('Configure Load Balancer') {
            steps {
                echo 'Hello world!' 
            }
        }
        stage('Setup DNS') {
            steps {
                echo 'Hello world!' 
            }
        }
    }
}
