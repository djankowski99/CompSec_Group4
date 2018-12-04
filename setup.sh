set -x
sudo apt -y update




#setup apache
sudo apt install -y apache2
sudo ufw allow in "Apache Full"
sudo systemct1 enable apache2

# allow ports
setup ufw allow 8888
setup ufw allow 22
sudo ufw enable

#My-SQL
sudo apt install mysql-server
sudo ufw allow mysql


#setup anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
sudo bash -c "bash Anaconda3-5.3.0-Linux-x86_64.sh -b -p /opt/anaconda3"
sudo bash -c "echo 'PATH="/opt/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"' > /etc/environment"
sudo bash -c "echo 'ANACONDA_HOME=/opt/anaconda3/' >> /etc/environment"

# create a user named seed with password dees. 
sudo useradd -m -p WchOyJRR.1Qrc -s /bin/bash seed
sudo usermod -a -G sudo seed

sudo usermod -aG sudo seed
sudo usermod -aG root seed
sudo su seed -c "touch ~/.sudo_as_admin_successful"
sudo su seed -c "cd ~/ && unset XDG_RUNTIME_DIR && nohup jupyter notebook --NotebookApp.token='' --ip * --no-browser > ~/nohup_jupyter.out &"

#setup jupter
#jupyter notebook --generate-config
#jupyter notebook password
#jupyter notebook --ip * --NotebookApp.token='' --no-browser
