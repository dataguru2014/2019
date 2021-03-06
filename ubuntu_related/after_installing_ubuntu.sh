#! /bin/bash


# AFter installing ubuntu, it sleeps after sometime not in use. So disable it: goto 
# Setting - Power - Blank screen - off

# To use this file, you may wanna UNCOMMENT some of the command for the first use.

# For ubuntu information: show ubuntu version command:

lsb_release -a

# The very first step of running this file is to GET this file...... So you may need to just copy this file or clone the whole repository with git clone. Steps are the following:

read -p 'type y or n for sudo apt-get update or not: ' choose
ans='y'
if [ $ans == $choose ]
then
	echo '====== sudo apt-get update ======'
	# Use sudo apt-get update for updating the apt-get
	sudo apt-get update
	echo '====== finish update ======'
else
	echo '====== no update ======'
fi


# Install git before cloning
echo '====== install git ======'
sudo apt-get install git
echo '====== finish git ======'
#Optional install speedtest
echo '======install speedtest======'
sudo apt install speedtest-cli
echo '======finish speedtest======'
# Change directory to the home directory

cd

# Clone git remot repository:
echo '=== clone 2019 ==='
git clone https://github.com/wubinbai/2019.git
echo '=== finish clone ==='
# if you clone it this way, you will have to enter username and passwd everytime you push, to enable credential caching so that you don't need to enter everytime:
cd ~/2019
git config credential.helper store
git push
git config --global user.email wubinbai@yahoo.com

# then enter your username and passwd just for one-time. You are permanently set for future use.

# 



# First you may wanna follow the instructions on the welcome page. Options are to set up the livepatch: U.s.e.R. : wubinbai e.m.a.i.1: wubinbai@yahoo.com p.s.w: b**00****

# Then setup font manually. Open a terminal,  go to the preference and text, set the font size to around 42-46.

# You may want to alias sd as shutdown now to fasten your shutdown using two letters:

# Go to the ~/ first:

cd
echo "# customized aliases by wubin" >> .bashrc
echo "alias"" ""sd=\"shutdown now\"" >> .bashrc
echo "alias"" ""ls4=\"ls -lhtr\"" >> .bashrc


echo "alias"" ""les=\"less\"" >> .bashrc

echo "alias"" ""ipy=\"ipython3 -i\"" >> .bashrc
echo "alias"" ""jn=\"jupyter notebook\"" >> .bashrc


echo "alias"" ""v=\"vim\"" >> .bashrc
echo "alias"" ""gis=\"git status\"" >> .bashrc
echo "alias"" ""gicm=\"git commit -m\"" >> .bashrc
echo "alias"" ""gips=\"git push\"" >> .bashrc
echo "alias"" ""gipl=\"git pull\"" >> .bashrc
echo "alias"" ""gia=\"git add\"" >> .bashrc
echo "alias"" ""gicl=\"git clone\"" >> .bashrc
echo "alias"" ""py=\"python3\"" >> .bashrc
echo "alias"" ""rb=\"reboot\"" >> .bashrc
echo "alias"" ""cdd=\"cd \/media\/wb\/TOSHIBA\\ EXT\/2\/d\/dataguru\"" >> .bashrc

echo "alias"" ""cdd2=\"cd /media/wb/TOSHIBA\ EXT/2/d/dataguru/ \"" >> .bashrc
echo "alias"" ""na=\"nautilus .\"" >> .bashrc
# Then you can install vim

sudo apt-get install vim

# Install unrar

sudo apt install unrar
# Please uncomment the following lines to install anaconda.

# Then, to install anaconda. The fastest way to download is using Thunderstorm on Windows Platform, which takes about 3 - 5 mins.

# Prerequisites for installing anaconda, which takes about 20 seconds:

# sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

# Then, go to the anaconda.sh you have downloaded, and run the ./xxx.sh

# The installer prompts “In order to continue the installation process, please review the license agreement.” PRESS ENTER to view license terms.

# Scroll to the bottom, ENTER "yes"

# The installer prompts you to PRESS ENTER to accept the default install location. # We recommend you accept the default install location. Do not choose the path as /usr for the Anaconda/Miniconda installation.

# The installer prompts “Do you wish the installer to initialize Anaconda3 by running conda init?” We RECOMMEND “yes”.

# Then, all done. Anaconda and JetBrains are working together to bring you Anaconda-powered environments tightly integrated in the PyCharm IDE.

# Close and open your terminal window for the installation to take effect, OR you can enter the command source ~/.bashrc.

# To control whether or not each shell session has the base environment activated or not, run conda config --set auto_activate_base False or True. To run conda from anywhere without having the base environment activated by default, use conda config --set auto_activate_base False. This only works if you have run conda init first.

# After your install is complete, verify it by opening Anaconda Navigator, a program that is included with Anaconda: Open a terminal window and type anaconda-navigator. If Navigator opens, you have successfully installed Anaconda. If not, check that you completed each step above, then see our Help page.

# After installing anaconda, you have already installed a lot of related packages, like jupyter notebook!!!

# You have now installed ipython, and you may wanna configure it, since you have cloned the repository, you can simply copy the file in the repository into the directory where the ipython import packages. The following line does this.

cp ~/2019/Config_ipython_import/ipython/import_here.py ~/.ipython/profile_default/startup/


# Uncomment the following lines to install VLC Player.

# Install VLC Player for playing mp4

# sudo add-apt-repository ppa:videolan/master-daily
# sudo apt update

# To install:

# sudo apt install vlc qtwayland5

#In order to use the streaming and transcode features in VLC for Ubuntu 18.04, enter the following command to install the libavcodec-extra packages.

# sudo apt install libavcodec-extra

# set up drivers for GPU:
# GO TO https://www.nvidia.com/Download/index.aspx?lang=en-us to download the shell script for drivers. Around 100 MB. Then execute the script.

# if unable to find gcc, sudo apt-get install gcc

# If installation is failed due to current installed graphics driver, you may want to remove the current driver. For instructions, go do the directory in the current directory here, following the .txt file.

# Now, the VLC plaer and the graphics driver have been installed, you could use VLC player to play the mp4 file. In case there's no sound, it may due to the setup in linux. Change the output in the linux sound settings to HDMI rather than S/FPDI if you are using HDMI.

# To set the VLC as the default player, simpler search for "default"

# just some memo..

# to check memory mhz hardware:
# use dmidecode -t 17

# Q & A
# 1. What if no sound for HDMI?
# A. try: sudo apt install gnome-shell-extensions
#         sudo adduser $wb audio
# 2. Install ReText on Ubuntu Linux for README.md, markdown file
# A. sudo apt install retext
# 3. Install grip for README.md
# A. sudo apt install grip
# 4. Storage Disk Space Problem: to check all directories' sizes:
# A. sudo du -sh /*
# which means disk usage, human readable, for all directories
# 4. How to peek zip file or view zip file content?
# A. use zip -sf file_name_of_zip.zip
# 5. How to fix imdb data allow_pickle==False problem
######


#Here is s a trick to force imdb.load_data to allow pickle by, in your notebook, replacing this line:

#(train_data, train_labels), (test_data, test_labels) = imdb.load_data(num_words=10000)

#by this:

#import numpy as np
## save np.load
#np_load_old = np.load

## modify the default parameters of np.load
#np.load = lambda *a,**k: np_load_old(*a, allow_pickle=True, **k)

## call load_data with allow_pickle implicitly set to true
#(train_data, train_labels), (test_data, test_labels) = imdb.load_data(num_words=10000)

## restore np.load for future normal usage
#np.load = np_load_old



######


# Appendix
# My libraries
# 1. sudp apt install mpg123 # for converting mp3 to wav
# 2. sudo snap install docker # for installing docker
# 3. install pycharm?
#  conda install -c chen pycharm 
# My Commands
# 1. Open chrome? Use see name.html
# 2. Status bar? Use | pv
# 3. pdf combine? combo? Use pdfunite
<<<<<<< HEAD
# 4. linux just list directories:
#    ls -d */ # star means all, / means directory sign
#    to list directories and subdirectories:
#    ls -d */*/
#    ls -d */*/*/
=======
# 4. vim print? :set printfont=courier:h13
#     :hardcopy>myfile.ps
#     ps2pdf myfile.ps
# 5. find files of large size:
# find . -size +800M
# 6. how to use grep?
# grep -r 'keyword' file/path
# 7. to find, actually to locate a file, better use
# locate filename
# 8. to reset git add
# git reset HEAD

