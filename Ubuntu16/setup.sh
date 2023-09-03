# Before installation, run the minimal update, upgrade and vim to write this shell script
# because the WSL16 pull basic has nothing.
#  - apt update
#  - apt upgrade
#  - apt install vim
#  --> apt-get update && apt-get upgrade -y && apt-get install vim -y

# Basic installation
cd ~ 
apt-get update
apt-get upgrade -y
apt-get install git wget unzip vim curl gcc python3-dev -y

# install and compile python 3.8, maximum version.
apt-get install build-essential checkinstall -y
apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y

pip3 install --upgrade pip
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
tar xvfz Python-3.8.1.tgz
cd Python-3.8.1
./configure && make && make install
cd ..
pip3 install pwntools

# PIP installation
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.8 get-pip.py

# GDB-PEDA
apt-get install gdb -y
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# one_gadget tool installation
# In ubuntu16, we need to manually install ruby2.4
apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install ruby2.4 ruby2.4-dev
ruby2.4 -v
gem install one_gadget

# install patchelf
apt-get install patchelf -y

# install one gadget
apt-get install software-properties-common -y
apt-add-repository ppa:brightbox/ruby-ng -y
apt-get update
apt-get install ruby2.4 -y
apt-get install gem -y
gem install one_gadget
