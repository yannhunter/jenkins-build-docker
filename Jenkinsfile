node{
    def app
     stage('Clone') {
      checkout scm
     }
    stage('Build image') {
      app = docker.build("gunhunter21/resto2")
     }
    stage('Test image') {
      docker.image('gunhunter21/resto2').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl 192.168.10.5:80'
	  }
    }
        stage('Push image') {
            withDockerRegistry([credentialid:])
      app = docker.build("gunhunter21/resto2")
     }
}   