pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker { image 'maven:3-alpine' }
            }
            steps {
                dir (path: "./docker-images/sea-persons/") {
                    sh './build-docker-image.sh'
                }
            }
       }
       stage('Redeploy') {
            steps {
                dir (path: "./docker-topologies/runtime/") {
                    echo "current directory is: ${pwd()}"
                    sh 'docker-compose down --volumes'
                    sh 'docker-compose up -d'
                }
           }
       }
    }
}
