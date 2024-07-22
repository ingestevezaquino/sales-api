pipeline {
  agent any
  environment {
    // Determines which env both apps will be compiled for.
    BUILD_ENV='prod' // CHOOSE FROM: 'dev', 'stg', 'prod'.
    
    APP_NAME_FRONTEND='helloworld'
    APP_NAME_BACKEND='helloworld-api'

    // Adjusts which port is the API URL gonna use.
    API_URL='http://localhost:8081/api'
  }
  stages {

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
