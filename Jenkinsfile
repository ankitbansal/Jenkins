pipeline {
    agent any 
    stages {
        stage('Build Image') {
            agent { dockerfile true }
            steps {
                sh 'ruby --version' 
            }
        }
        stage('Publish Image') {
	    agent { 
            docker {
                image '7666efccbf0e5358982607967ddbe7730a4edb8c'
                registryUrl 'https://fra.ocir.io'
                registryCredentialsId 'dockercred'
                }
            }
            steps {
                script {
                    docker.tag('7666efccbf0e5358982607967ddbe7730a4edb8c', 'fra.ocir.io/psmsvc3/jenkins/httpserver_ruby')
                    docker.push('fra.ocir.io/psmsvc3/jenkins/httpserver_ruby')
                }
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
