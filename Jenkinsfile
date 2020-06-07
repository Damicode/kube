

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudendtial ="Mydocker20"
    dockerImage =""
    MAVEN_HOME="/opt/maven/apache-maven-3.6.3/bin/"
 
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


    stage ("Build the image"{
        steps
        {
            dockerImage = docker.build(Register +":dami-image")
        }
        
    }

}

}
