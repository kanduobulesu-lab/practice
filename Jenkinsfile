pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
    stage('install dependencies') {
        steps {
            echo "installing node.js dependencies..."
            bat 'npm install'
        }
    }
    stage ('build') {
        steps {
            echo "building the project"
           // create build folder if not exists
            bat 'if not exist build mkdir build'
           // copy public folder
            bat 'xcopy public build /E /I /Y'
           // copy build.js   
            bat 'copy build.js build\\'
            echo "build completed!"     
        }
    }
    stage('archive artifacts') {
        steps {
            echo "archiving build artifacts..."
            archiveArtifacts artifacts: '**/build/**', allowEmptyArchive: true
        }
    }
    }
}



        
    