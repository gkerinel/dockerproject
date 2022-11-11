curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null



echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee
/etc/apt/sources.list.d/jenkins.list > /dev/null



sudo apt-get update



sudo apt install openjdk-11-jdk -y



sudo apt-get install jenkins
echo "kurulum tamamlandı"



echo "Initial password"



sudo cat /var/lib/jenkins/secrets/initialAdminPassword
