#!/bin/bash

# Download install pip script:
echo '> Downloading get-pip.py script:'
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# Run the script to install pip:
echo '> Running get-pip.py script:'
python3 get-pip.py --user

# Remove the get-pip.py file:
echo '> Removing the get-pip.py script:'
rm get-pip.py

# Install ansible:
echo '> Installing ansible'
python3 -m pip install --user ansible

# Make sure that local bin is in ~/.bashrc:
echo '> Appending ~/.local/bin to ~/.bashrc for path update:'
echo 'PATH="${PATH:+${PATH}:}~/.local/bin"' >> ~/.profile

# Make sure that cargo bin path is in ~/.bashrc:
echo '> Appending ~/.cargo/bin to ~/.bashrc for path update:'
echo 'PATH="${PATH:+${PATH}:}~/.cargo/bin"' >> ~/.profile

# Source the new .bashrc:
echo '> Sourcing ~/.bashrc'
source ~/.bashrc

# Run the setup playbook
echo '> Running the ansible install playbook:'
ansible-playbook -i inventory.txt setup.yml
