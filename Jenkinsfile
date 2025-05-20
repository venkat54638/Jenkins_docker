pipeline {
    agent any

    stages {
        stage ("Install") {
            steps {
                sh 'python3 -m pip install --upgrade pip'
                sh 'pip install -r requirements.txt'

            }
        }
        stage ("Linting") {
            steps {
                script {
                    echo "This is my Linting Step"
                }
            }
        }
        stage ("Install Packages") {
            steps {
                script {
                    echo "This is Install PAkcges Step"
                }
            }
        }
        stage ("Run Application") {
            steps {
                script {
                    echo "This is my Run applcaition Step"
                }
            }
        }

    }
}