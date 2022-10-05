pipeline {
  agent any
  stages {
    stage('Validate') {
      steps {
        echo 'terraform validate'
        script {
          terraform validate
        }

      }
    }

  }
}