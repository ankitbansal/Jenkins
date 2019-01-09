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
            steps {
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockercred',
                                      usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
                        sh 'docker login -u "$USERNAME" -p "$PASSWORD" -r "fra.ocir.io"'
                        sh "docker tag 7666efccbf0e5358982607967ddbe7730a4edb8c fra.ocir.io/psmsvc3/jenkins/httpserver_ruby"
                        docker.image("fra.ocir.io/psmsvc3/jenkins/httpserver_ruby").push()
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
