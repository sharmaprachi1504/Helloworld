pipeline {
  agent any
 
  stages {
    
    
    stage('Restore') {
      steps {
        bat 'dotnet restore'
      }
    }
    stage('Clean') {
      steps {
        bat 'dotnet clean'
      }
    }

    stage('Build') {
      steps {
        bat 'dotnet build dotnet-core-helloWorld.csproj'
      }
    }

  }
}
