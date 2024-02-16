
     pipeline {
    agent { label 'Jenkins-Agent' }
    tools {
        jdk 'Java17'
        maven 'Maven3'
    }
    
    environment {
        APP_NAME = "my-app"
        RELEASE = "1.0"
        DOCKER_USER = "johnpup"
        DOCKER_PASS = "dockerhub"
        IMAGE_NAME = "${DOCKER_USER}" + "/" + "${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
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
        
        stage('build') {
            steps {
                script {
                    docker.withRegistry('',DOCKER_PASS) {
                        docker_image = docker.build "${IMAGE_NAME}"
                        }
                      
                    
                    
                    
                    docker.withRegistry('',DOCKER_PASS) {
                        docker_image.push("${IMAGE_TAG}")
                        docker_image.push('latest')
                        
                    }
                }
            }
        }
        
    }
}
