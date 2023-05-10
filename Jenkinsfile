pipeline {
  agent any
 
  stages {
    
    
    stage('Restore') {
      steps {
        bat 'dotnet restore dotnet-core-helloWorld.csproj'
      }
    }
    stage('Clean') {
      steps {
        bat 'dotnet clean dotnet-core-helloWorld.csproj'
      }
    }

    stage('Build') {
      steps {
        bat 'dotnet build dotnet-core-helloWorld.csproj'
      }
    }

  }
}
