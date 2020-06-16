 #!/bin/sh

# Now,	is	time to	install	python−dev and pip ! !
sudo apt-get install python-dev python-pip -y
#Install open−cv and python needed packages
sudo pip install numpy
sudo pip install imutil
sudo apt-get install python-opencv -y
sudo apt-get install python-scipy -y 

# Installing dlib
git clone https://github.com/davisking/dlib.git
cd dlib
python setup.py install --no USE_AVX_INSTRUCTIONS


#Installing realsense camera  drivers 
sudo apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C8B3A55A6F3EFCDE
sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u
sudo apt−get install realsense−uvcvideo 

#Installing	and  starting	docker
sudo apt−get install docker.io −y
sudo  systemctl	start docker
sudo  docker pull   nicmoseli/adaseci:latteV1.1
