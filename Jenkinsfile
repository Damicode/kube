

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
        git 'https://github.com/Damicode/caliber-2-config-server.git'
    }
    

}

stage('Version'){
        steps{
            sh 'mvn --version'
        }
}

stage('install'){
        steps{
          
            sh " ${MAVEN_HOME}mvn clean package"
        }
}




}

}
