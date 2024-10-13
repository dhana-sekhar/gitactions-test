pipeline {
    agent any
    stages {
        stage("First Stage") {
            steps {
                echo "Hi, This is first stage"
            }
        }
        stage("Second Stage") {
            steps {
                echo "Kindly experience the input"
                input("Do you want to proceed further?")
            }
        }
        stage("Third Stage") {
            when {
                not {
                    branch "master"
                }
            }
            steps {
                echo "This is not Master"
            }
        }
        stage("Fourth Stage") {
            parallel {
                stage("Unit Test") {
                    steps {
                        echo "Running Unit Tests....."
                    }
                }
                stage("git pull"){
                    steps {
                        sh 'whoami'
                        sh 'ifconfig |grep "inet "'
                        sh 'pwd'
                        echo "Runnind git pull"
                        sh 'git clone https://github.com/dhana-sekhar/gitactions-test.git'
                    }
                }
                stage("Integration Test") {
                    agent {
                        docker {
                            image 'ubuntu'
                            reuseNode false  
                        }
                    }
                    steps {
                        echo "Running the integration test..........."
                        sh 'echo Testing inside a Docker container'
                        sh 'whoami'
                        sh 'pwd'
                    }
                }
            }
        }
    }
}
