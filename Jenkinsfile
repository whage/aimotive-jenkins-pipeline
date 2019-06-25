def volume_path = "/tmp/yaml_cpp_build_results"

node {
    stage('git clone') {
        sh "git clone https://github.com/whage/aimotive-jenkins-pipeline.git"
    }
    stage('build docker image') {
        sh "cd aimotive-jenkins-pipeline && docker build -t yaml-cpp-builder:0.1 ."
    }
    stage('build yaml-cpp') {
        sh "docker run --rm --memory=2g --cpus=1 -v $volume_path:$volume_path yaml-cpp-builder:0.1 $volume_path"
    }
}
