#!groovy

node { // <1>
    checkout scm
    stage('Build') { // <2>
       sh './scripts/project; qa; ./scripts/build-images;'
    }
    stage('Test') {
        sh './scripts/jenkins qa'
    }
    stage('Deploy') {
        echo 'Deploy stage'
    }
}