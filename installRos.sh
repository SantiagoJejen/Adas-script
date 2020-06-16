 #!/bin/sh

# This script configures the desktop computer in order to be used in ROS program development

# Add Universe and Multiverse packages repository
sudo apt-add-repository restricted
sudo apt-add-repository universe
sudo apt-add-repository multiverse
sudo apt-get update
sudo apt-get upgrade -y

# install editors
#sudo apt-get install terminator -y
#sudo apt-get install nano -y

# Another useful customization 
#sudo apt-get install aptitude -y 
#sudo apt-get install bash-completion command-not-found -y

# Now, is time to install ROS!!
#sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX
#sudo dpkg-reconfigure locales
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-ros-base -y
sudo apt-get install python-rosdep -y
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#configuring ROS enviroment

# Now, is time to install OpenCV!!

#sudo apt-get install python-dev python-pip -y
sudo pip install numpy -y
sudo apt-get install python-opencv -y


#install cv_bridge

sudo apt-get install ros-kinetic-cv-bridge -y

#install python needed packages
#pip install imutil -y
#pip install scipy -y

#instalar camera ros
sudo apt-get install ros-kinetic-usb-cam -y

sudo apt-get install ros-kinetic-cv-camera -y
