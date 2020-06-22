

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudandtial ="Mydocker20"
    dockerImage ="aaaa"
    maven = tool name: 'maven-3', type: 'maven'
  
 
}

stages{

stage ('Clonning from git'){

    steps{
        git 'https://github.com/Damicode/kube.git'
    }
    

}

stage('Version'){
        steps{
        
            sh "${maven}/ mvn --version"
        }
}

stage('package & install 2'){
        steps{
          
            sh "${maven}/bin/ mvn package"
        }
}



    
   
    
    stage("clean up or Remove Image"){
        
        steps
        {
        echo "cool s"
        }
        
    }

}

}
