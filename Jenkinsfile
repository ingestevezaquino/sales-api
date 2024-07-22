pipeline {
  agent any
  environment {
    // Determines which env both apps will be compiled for.
    BUILD_ENV='prod' // CHOOSE FROM: 'dev', 'stg', 'prod'.
  }
  stages {
    stage('Clone Git Repo | Backend') {
      steps {
        dir('src/backend') {
          checkout([$class: 'GitSCM', branches: [[name: '*/main']],
          userRemoteConfigs: [[url: 'https://github.com/ingestevezaquino/sales-api.git']]])
        }
      }
    }
    /////////////////////////////////////////////////////
    // BACK END
    /////////////////////////////////////////////////////
    stage('Build App | Backend') {
      steps {
        sh 'echo "Hola mundo desde Test!!"'
      }
    }
  }
}
