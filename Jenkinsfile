
pipeline {
  agent any
  parameters {
    choice(
      name: 'Env',
      choices: ['L1', 'L2', 'L3', 'L4'],
      description: 'Passing the Environment'
    )
  }
  stages {
    stage('Environment') {
      steps {
        echo " The environment is ${params.Env}"
      }
    }
  }
}
