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
        //bat 'dotnet tool install --global dotnet-sonarscanner'
        bat 'dotnet sonarscanner begin /k:"Bench_Practice" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="fd6f2d848a93fd3a81af15bcbd40efe0c915d754"'
        //bat 'dotnet sonarscanner begin /k:"Bench_Practice" /o:sonar.organization="prachisharma01" /d:sonar.login="65ae3c9e182359c95aa2126fc0e94810732ba395" /d:sonar.host.url="http://localhost:9000"'
        bat 'dotnet build dotnet-core-helloWorld.csproj'
        bat 'dotnet sonarscanner end /d:sonar.login="fd6f2d848a93fd3a81af15bcbd40efe0c915d754"'
        
      }
    }
    stage('DockerImageBuild'){
      steps{
         bat 'docker build -t testimage1 .'
         bat 'docker run -d -p 8085:8080 testimage1'
      }
    }

  }
}
