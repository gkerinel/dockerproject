1)VirtualBox installed and created new virtual machine. 


2)Ubuntu operating system installed in virtual machine.

3)Connected to virtual device with SSH

4)A shell script to install the Docker has been created.
#SET UP THE REPOSITORY
#Update the apt package index and install packages to allow apt to use a repository over HTTPS:

sudo apt-get update -y

sudo apt-get install ca-certificates curl gnupg lsb-release -y

#Add Docker’s official GPG key:

sudo mkdir -p /etc/apt/keyrings -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg -y

#Use the following command to set up the repository:

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null -y

#INSTALL DOCKER ENGINE
#Update the apt package index:

sudo apt-get update -y

#Install Docker Engine, containerd, and Docker Compose.

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

5)Dockerfile has been created.

6)Jenkins installed locally with shell script.

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
  
sudo apt-get update

sudo apt-get install jenkins

