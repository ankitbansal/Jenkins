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
                registryUrl 'fra.ocir.io'
                registryCredentialsId 'dockercred'
                args '-v /var/jenkins_home/.m2:/root/.m2'
                }
            }
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
