

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudandtial ="Mydocker20"
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
               """ dockerImage = docker.build("${dockerRegister}:dami-image")"""
            }
        }
        
    }
    
    stage("Pushing to Docker")
        
    {
        
            steps{

                    script
                    {

                        docker.withRegistry('', dockerRegisterCrudandtial)
                        {

                          """  dockerImage.push()"""
                        }
                    }
            
                }
        
        
       }
    
    stage("clean up or Remove Image"){
        
        steps
        {
          """ sh "docker rmi ${dockerRegister}:dami-image" """
        }
        
    }

}

}
