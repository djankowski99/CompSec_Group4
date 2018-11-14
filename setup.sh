sudo apt -y update
#setup apache
sudo apt install -y apache2
sudo ufw allow in "ApacheFull"
sudo systemct1 enable apache2


#setup anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
sudo bash -c -y "bash Anaconda3-5.3.0-Linux-x86_64.sh -b -p /opt/anaconda3"
sudo bash -c -y "echo 'ANACONDA_HOME=/opt/anaconda3/' >> /etc/profile"
sudo bash -c -y "echo 'PATH=/opt/anaconda3/bin:$PATH' >> /etc/profile"

#sudo allow ports
setup ufw allow 8888
setup ufw allow 22

sudo ufw enable
