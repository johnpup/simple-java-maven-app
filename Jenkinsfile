pipeline {
    agent { label 'Jenkins-Agent' }
    tools {
        jdk 'Java17'
        maven 'Maven3'
    }
    stages {
        stage('cleanworkspace') {
            steps {
                cleanWs()
            }
        }
        
        stage('checkout') {
            steps {
                
              git branch: 'master', credentialsId: 'github', url: 'https://github.com/johnpup/simple-java-maven-app'
            }
            
        }
        
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
            
        }
        
        stage('test') {
            steps {
                sh 'mvn test'
            }
            
        }
    }
}
