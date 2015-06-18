#!/bin/bash


#Written by Merlin04

MODE=$1

if [ "$MODE" = "remove" ]; then
zenity --warning --title=Are\ you\ sure\? --text=This\ will\ remove\ all\ traces\ of\ ddgquery\ from\ your\ computer\.\ Press\ ctrl\-c\ in\ your\ terminal\ now\ to\ cancel\.\ Do\ not\ run\ in\ the\ ddgquery\ directory\.

echo "Removing 'ddgquery' folder in ~"

rm ~/ddgquery/ddgquery.py
rm ~/ddgquery/LICENSE
rm -rf ~/ddgquery/.git
rm ~/ddgquery/README.md
rm ~/ddgquery/installddgquery.sh
rmdir ~/ddgquery
echo "Removing executable file from /bin"
echo "You will be promped to enter your root password."
sudo rm /bin/ddgquery
echo "Done!"

else

#Tell the user about this script

echo "This will install ddgquery, a handy answers program."


#install stuff

echo "Installing packages..."

sudo apt-get install python3

sudo apt-get -q update

sudo apt-get -q -y install python-pip

sudo pip install ddg

sudo apt-get -q -y install espeak

sudo apt-get -q -y install git

#Clone into GitHub

echo "Getting ddgquery files from GitHub..."

cd ~ && git clone https://github.com/Merlin04/ddgquery.git

#Put ddgquery in the right place and make it a program

echo "Installing ddgquery..."

cd ~/ddgquery && sudo cp ddgquery.py /bin/ddgquery

cd /bin && sudo chmod +x ddgquery

#finish

echo "ddgquery installed. Type 'ddgquery' to run."

cd ~

fi
