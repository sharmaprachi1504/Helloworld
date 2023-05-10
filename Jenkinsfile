pipeline {
  agent any
  #{ label "build && windows" }
  stages {
   # stage('Clean Workspace'){
     # steps {
     #   cleanWs()
      #}
   # }
    
    stage('Restore') {
      steps {
        bat 'dotnet restore'
      }
    }

    stage('Build') {
      steps {
        bat 'dotnet build dotnet-core-helloWorld.csproj'
      }
    }

    stage('UnitTest') {
      steps {
        script {
          bat label: 'Unit Test using Dotnet CLI',
        script: '''
          dotnet.exe test .\\PrimeDotnet\\
        '''
        }
      }
    }

    stage('Deploy') {
      steps {
        bat label: 'MsDeploy',
        script: ''' 
          // For Localhost
          "C:\\Program Files (x86)\\IIS\\Microsoft Web Deploy V3\\msdeploy.exe" -verb:sync -source:package="PrimeDotnet\\bin\\Debug\\Package\\PrimeDotnet.zip" -dest:auto,computerName=localhost
          // For Remote Server
           "C:\\Program Files (x86)\\IIS\\Microsoft Web Deploy V3\\msdeploy.exe" -verb:sync -source:package="PrimeDotnet\\obj\\Debug\\Package\\PrimeDotnet.zip" -dest:auto,computerName="<IP or Hostname>",userName=administrator,password="supersecret",authType=NTLM -allowUntrusted=true
        '''
      }
    }
  }
}
