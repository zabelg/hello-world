pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -f demo -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn -f demo test'
            }
            post {
                always {
                    junit 'demo/target/surefire-reports/*.xml'
                }
            }
        }
    }
}