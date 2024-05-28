pipeline {
    agent any

    stages {
        stage('Clone git repositorio') {
            steps {
                git 'https://github.com/marcelompmatos/jk-public-gh.git'
            }
        }
        
        stage('Build image - Clonar imagem') {
            steps {
                sh 'docker build -t webapp:${BUILD_NUMBER} .'
            }
        }
        
         stage('Deploy da aplicação - Implantando Aplicação') {
            steps {
                sh '''
                    
                    docker run --rm -d -p 3000:3000 --name webapp_ctr webapp:${BUILD_NUMBER}
            '''
            }
        }
    }
}
