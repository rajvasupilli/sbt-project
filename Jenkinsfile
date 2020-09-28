pipeline {
    agent {label 'LinuxAgent'}
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
