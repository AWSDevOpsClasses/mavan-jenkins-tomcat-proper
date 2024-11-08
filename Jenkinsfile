pipeline {
    agent any
    triggers {
  cron 'H/5 * * * *'
}

    tools{
        maven 'maven-3.9.9'
    }
    options {
  buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '2')
  }


    stages {
       stage('Clone the repository') {
            steps {
            git branch: 'main',
                url: 'https://github.com/AWSDevOpsClasses/mavan-jenkins-tomcat-proper.git'              
            }
        }

       stage('Build the maven code') {
            steps {
            sh 'mvn clean install'
                 }
      }

      stage('Deploy to tomcat') {
            steps {
            deploy adapters: [tomcat7(credentialsId: 'Tomcat_Username_password', path: '', url: 'http://15.207.117.35:8080')], contextPath: null, war: '**/*.war'
                 }
      }
  }  
}
