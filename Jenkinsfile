

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudendtial ="Mydocker20"
    dockerImage =""
  
 
}

stages{

stage ('Clonning from git'){

    steps{
        git 'https://github.com/Damicode/kube.git'
    }
    

}

stage('Version'){
        steps{
            sh 'mvn --version'
        }
}

stage('package & install'){
        steps{
          
            sh "mvn package"
        }
}


    stage ("Build the image"){
        steps
        {
            script{
                dockerImage = docker.build("${dockerRegister}:dami-image")
            }
        }
        
    }

}

}
