pipeline {
    agent any
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