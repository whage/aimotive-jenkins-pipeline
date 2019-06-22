node {
    stage('git clone') {
        sh 'git clone https://github.com/whage/aimotive-jenkins-pipeline.git'
    }
    stage('build docker image') {
        sh 'cd aimotive-jenkins-pipeline && docker build -t yaml-cpp-builder:0.1 .'
    }
}
