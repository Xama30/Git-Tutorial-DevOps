node {
    def app

    stage('Clone repository'){
        checkout scm
    }

    stage('Build image') {
        app = docker.build("Xama30/git-tutorial-devops")
    }

    stage('Test image') {
        app.inside{
            sh 'echo "Running tests..."'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push('latest')
        }
    }
}