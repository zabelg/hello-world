pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '/usr/local/Cellar/maven/3.5.3/bin/mvn -f demo -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh '/usr/local/Cellar/maven/3.5.3/bin/mvn -f demo test'
            }
            post {
                always {
                    junit 'demo/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Integration Test') {
            steps {
                sh '/usr/local/Cellar/maven/3.5.3/bin/mvn -f demo integration-test'
            }
            post {
                always {
                    junit 'demo/target/failsafe-reports/*.xml'
                }
            }
        }
        stage('Deliver') {
            steps {
                sh 'java -jar demo/target/demo-0.0.1-SNAPSHOT.jar'
            }
        }
    }
}