pipeline {
    agent {LinuxAgent}
    stages {
        stage('build') {
            steps {
                sh '''
                     cd /tmp
                     touch firstpipelinefolder
                '''
            }
        }
    }
}
