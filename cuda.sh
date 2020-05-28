#Written by BSc. Gabriel Jimenez-Avalos for the Zimic-Sheen lab
#This script install nvidia-cuda 10.1 drivers and its dependencies
sudo apt-get install freeglut3 freeglut3-dev libxi-dev libxmu-dev
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget http://developer.download.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-1-local-10.1.243-418.87.00/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
sudo nano ~/.bashrc
#Paste 
#export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}$ 
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
