pipeline {
    environment {
        JAVA_TOOL_OPTIONS = "-Duser.home=/var/maven"
    }


    // docker agent means that jenkins will execute docker container and the whole pipeline will execute inside this docker container
    agent {
        docker {
            image "maven:3.6.0-jdk-13"
            label "docker"
//            Store the dependencies for the next run to avoid to download it every run
            args "-v /tmp/maven:/var/maven/.m2 -e MAVEN_CONFIG=/var/maven/.m2"
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