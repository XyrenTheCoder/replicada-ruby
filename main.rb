require "subprocess"
require "dir"
require "os"
require "securerandom"

OS.windows? ? sep = "\\" : sep = "/"  
cwd = dir::getwd()

count = 0

while true
    name = SecureRandom.hex
    Sleep(1)
    


for dir in cwd
    #
