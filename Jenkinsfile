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
      //  bat 'dotnet tool install --global dotnet-sonarscanner'
       // bat 'dotnet sonarscanner begin /k:"narendrakumar02_BenchFreshersTrainingAssignment" /o:sonar.organization="narendrakumar02" /d:sonar.token="ca8f7549be785d7880c59ce1ae6d4f0714b57abe" /d:sonar.host.url="https://sonarcloud.io"'
        bat 'dotnet build dotnet-core-helloWorld.csproj'
        //bat 'dotnet sonarscanner end /d:sonar.token="ca8f7549be785d7880c59ce1ae6d4f0714b57abe"'
        
      }
    }
    stage('DockerImageBuild'){
      steps{
         bat 'docker build -t testimage1 .'
         bat 'docker run -d -p 8080:8085 testimage1'
      }
    }

  }
}
