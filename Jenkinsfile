pipeline {

    // docker agent means that jenkins will execute docker container and the whole pipeline will execute inside this docker container
    agent {
        docker {
            image "maven:3.6.0-jdk-13"
            label "docker"
        }
    }

    stages {
        stage("Build") {
            steps {
                sh "mvn -version"
                sh "mvn clean install"
            }
        }
    }

    // Remove the workspace at the end
    post {
        always {
            cleanWs()
        }
    }
}