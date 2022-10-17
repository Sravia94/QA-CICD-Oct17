#update your Linux VM
sudo apt-get update

# install the python virtual environment libraries
sudo apt-get install python3-venv

# create a new python virtual environment
python3 -m venv pikachu

# verify that a directory for our environment, pikachu, is created
ls -l

# lets go to pikachu and see what is inside- expect a lot of directories and files required to setup our environment
cd pikachu

ls -l

# go to bin directory 
cd bin

# observe it has its own files for activating, deactivating, pip etc=> these files have nothing to do with rest of your VM
ls -l

# activate the virtual environment
source activate

# install flask library on your virtual environment
pip3 install flask 

# let's check if we can now use flask in our python3 virtual environment
python3

# this should work without any problem, no output expected
import flask

# let's go back to our virtual environment by exiting python
exit()

# let's go back to our virtual machine by exiting virtual environment 
deactivate

# Because we installed flask only in our environment. It should NOT work in rest of our VM- it should only work in our virtual environment. 
python3

# now this should give us an error- proving that our virtual environment was isolated, separate container 
import flask
