

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudendtial ="Mydocker20"
    dockerImage =""
}
 tools{
// maven 'maven 3'
// // jdk 'java 1.8.0_252'
 }
stages{

stage ('Clonning from git'){

    steps{
        git 'https://github.com/Damicode/caliber-2-config-server.git'
    }
    

}

stage('Version'){
        steps{
            sh 'mvn --version'
        }
}
stage ("initialize") {
steps {
sh '''
echo "PATH = ${PATH}"
echo "M2_HOME = ${M2_HOME}"
'''
}
}
stage('install'){
        steps{
            sh 'mvn  install'
        }
}

stage('Test'){
        steps{
            sh 'mvn test'
        }
}


stage('Build the image'){

        steps{
            script{

                dockerImage = docker.Build dockerRegister + ":$BUILD_NUMBER"
            }
        }
}

stage ('Deploy image to DockerHub'){

        steps{
            script{

                docker.withResgistry('' , dockerRegisterCrudendtial)
                dockerImage.push()
            }
        }

}

stage ("Remove unUsed docker image"){
    steps{

        sh "docker rmi $dockerRegistry:$BUILD_NUMBER"
    }
}



}


}