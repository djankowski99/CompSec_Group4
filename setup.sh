set -x
sudo apt -y update

# create a user named seed with password dees. 
sudo useradd -m -p WchOyJRR.1Qrc -s /bin/bash seed
sudo usermod -a -G sudo seed


#setup apache
sudo apt install -y apache2
sudo ufw allow in "ApacheFull"
sudo systemct1 enable apache2

#setup anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
sudo bash -c "bash Anaconda3-5.3.0-Linux-x86_64.sh -b -p /opt/anaconda3"
sudo bash -c "echo 'ANACONDA_HOME=/opt/anaconda3/' >> /etc/profile"
sudo bash -c "echo 'PATH=/opt/anaconda3/bin:$PATH' >> /etc/profile"

# allow ports
setup ufw allow 8888
setup ufw allow 22
sudo ufw enable

#setup jupter
jupyter notebook --generate-config
jupyter notebook password
jupyter notebook --ip * --NotebookApp.token='' --no-browser
