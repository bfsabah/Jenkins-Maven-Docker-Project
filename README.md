# Jenkins-Maven-Docker-Project
![jenkins-maven-docker (1)](https://user-images.githubusercontent.com/113843658/216242295-1f0d3d4c-7d8b-410e-bfa4-ac68e7a99159.jpg)
<br>
<ol>
<li> Launch an EC2 instance for Docker Host.</li>
<li> Install Docker and start the service.<br>
https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/49bac70807a33f2e0f3c2628be2c512d1e1959dc/Dockerfile#L9-L10</li>
<li> Create a new User for Docker and add it to dockergroup.<br>
https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L12-L14</li>
<li> Create a directory /opt/docker and change owner as dockeradmin.<br>
https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L15-L17</li>
<li> Write a Dockerfile in /opt/docker.<br>
https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L1-L6</li>
<li> Login to Jenkins console and add Docker Server SSH Server.<br>
Manage Jenkins --> Configure System --> Publish over SSH --> add Docker server and Credentials.</li> 
<li> Create a Jenkins Maven Project.</li>
<ul>
<li> Source Code Management<br> Repository :https://github.com/bfsabah/Jenkins-Maven-Docker-Project.git <br> Branches to Build: */main </li>
<li> Build Root POM: pom.xml <br> Goals and Options: clean install package </li>
<li> Send Files or Execute Commands over SSH <br>
    Name: docker_host<br>
    Source files: webapp/target/*.war<br>
    Remove Prefix: webapp/target <br>
    Remote directory: //opt//docker<br>
    Exec command[s]:<br>
    https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L19-L23
    </li>
<li> Send files or execute commands over SSH (2nd job) <br>
    Name: docker_host<br>
    Exec command: <br>
    https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L25
    </li>
</ul>
<li> Login to Docker host and check images and containers (delete if any existing images or containers) </li>
<li> Build Jenkins Maven Job. </li>
<li> Check images and containers again on Docker Host. There must be 2 images and a container. </li>
<li> Access web application from browser which is running on container. <br>
https://github.com/bfsabah/Jenkins-Maven-Docker-Project/blob/995372b4d2461c64113cb04be48386474d004317/Dockerfile#L27</li>
</ol>
