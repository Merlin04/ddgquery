#! /usr/bin/env python

import os, time
# use python3
while True:
    os.system("espeak -v en-us 'What would you like to know about?'")
    #time.sleep(4)
    query = input("What would you like to know about?\n")

    if query == "help":
        print("Add -u to get a helpful URL\nAdd -l to launch the URL in your browser\nAdd -s to get a DuckDuckGo search\nType 'about' to learn more.")
    elif query == "about":
        print("This uses the Duck Duck Go Zero-Click Info API. This program is written by Python and is written by Merlin04.")
    elif query == "quit":
        break
    else:
        os.system('ddg ' + query + ' | espeak -v en-us')
