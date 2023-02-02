# Jenkins-Maven-Docker-Project
![jenkins-maven-docker (1)](https://user-images.githubusercontent.com/113843658/215920141-3f75f295-0405-46df-8278-3099d1353857.jpg)<br>
<ol>
<li> Launch an EC2 instance for Docker Host.</li>
<li> Install Docker and start the service.</li>
<li> Create a new User for Docker and add it to dockergroup.</li>
<li> Create a directory /opt/docker and change owner as dockeradmin. </li>
<li> Write a Dockerfile in /opt/docker.</li>
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
    </li>
<li> Send files or execute commands over SSH (2nd job) <br>
    Name: docker_host<br>
    Exec command: <br>
    </li>
</ul>
<li> Login to Docker host and check images and containers (delete if any existing images or containers) </li>
<li> Build Jenkins Maven Job. </li>
<li> Check images and containers again on Docker Host. There must be 2 images and a container. </li>
<li> Access web application from browser which is running on container. </li>
</ol>