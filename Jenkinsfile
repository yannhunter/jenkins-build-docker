def pipelineContext = [:]
     node {

        def registryProjet='registry.gitlab.com/devops2921/presentation-jenkins'
        def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

        stage('Clone') {
            checkout scm
        }

        def img = stage('Build') {
            docker.build("$IMAGE",  '.')
        }

        stage('Run') {
            img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
            sh 'echo “The Run stage is done !!!” '
                }
        }
                            
        stage('Test') {
                { c ->
            sh 'curl 192.168.10.5:80'
            }
        }

        stage('Push') {
           docker.withRegistry('https://registry.gitlab.com', 'reg1') {
            img.push 'latest'
            img.push()
             }
        }

}