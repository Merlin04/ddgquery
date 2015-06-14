#!/bin/bash


#Written by Merlin04

#Tell the user about this script

echo "This will install ddgquery, a handy answers program."
zenity --warning

#install stuff

sudo apt-get install python3

sudo apt-get update -q

sudo apt-get install python-pip -q -y

sudo pip install ddg

sudo apt-get install espeak -q -y

sudo apt-get install git -q -y

#Clone into GitHub

cd ~ && git clone https://github.com/Merlin04/ddgquery.git

#Put ddgquery in the right place and make it a program

cd ~/ddgquery && sudo cp ddgquery.py /bin/ddgquery

cd /bin && sudo chmod +x ddgquery

#finish

echo "ddgquery installed. Type 'ddgquery' to run."

cd ~
