pipeline {
    environment {
        JAVA_TOOL_OPTIONS = "-Duser.home=/home/jenkins"
    }


    // docker agent means that jenkins will execute docker container and the whole pipeline will execute inside this docker container
    agent {
        dockerfile {
            label "docker"
//            Store the dependencies for the next run to avoid to download it every run
            args "-v /tmp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2"
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