
pipeline {
  agent any
  parameters {
    choice(
      name: 'Env',
      choices: ['L1', 'L2', 'L3', 'L4'],
      description: 'Passing the Environment'
    )
  }
  environment {
    ENV = "${env.Env}"
  }
  stages {
      stage('Environment setup') {
      steps {
        script{
          if (Env.equalsIgnoreCase('L1')) {
           def Servers = [1,2,3]          
          }else if (Env.equalsIgnoreCase('L2')) {
           def Servers = [3,4,5]  
        }
      }
    }
      }
     stage('Example') {
        steps {
                echo 'Hello World'

                script {
             
                    for (int i = 0; i < Servers.size(); ++i) {
                        echo "Testing the ${Servers[i]} browser"
                    }
                }
            }
     }          
    stage('Environment') {
      steps {
        echo " The environment is ${params.Env}"
        sh './deploy.sh'
      }
    }
  }
}
