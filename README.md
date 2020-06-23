# python_project

Prerequests
------------
1.install Docker on host machine (like ubuntu) please follow command
 
$ sudo apt-get install docker.io


2.Using Dockerfile we are creating docker image using below command 

 $ docker build -t test-img .

3.creating the two docker containers using the below commands

 $ docker run -it --name container1 test-img /bin/bash
 $ docker run -it --name container2 test-img /bin/bash

4.in bothe containers we need to generate the ssh-keys using the below commands  
 $ ssh-keygen

5.Next create a file as per below name in container2
   $ cd .ssh 
   $ touch authorized_keys  

6.Copy id_rsa.pub file content from $ cd .ssh container1 to container2 as we creted elair (authorized_keys)
 
  authorized_keys 

 
7.In the container1 execute the python script using the below command

 $ python conver.py

8.After execute the python script convert json file into xml file for example below file
 
    json_to_xml.xml 

9.Now Encryption the file using below command here we need to create a secure password (please update password in scp.sh file)

 $ gpg -c json_to_xml.xml

10.Encrypted file like .gpg formate 

  json_to_xml.xml.gpg

11.Remove the xml file 

 $ rm -rf json_to_xml.xml

12.if you want to decrypt the file using below command here we need to pass our pervious encryption password

 $ gpg json_to_xml.xml.gpg

13. Now Run the scp.sh script using below command (please update docker container IP in the below script)
 
 $ bash scp.sh 




