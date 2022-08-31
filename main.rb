require "fileutils"
require "os"
require "securerandom"

OS.windows? ? sep = "\\" : sep = "/"  
cwd = FileUtils.pwd()

count = 0

while true
    name = SecureRandom.hex
    Sleep(1)
    FileUtils.mkdir("#{cwd}#{sep}#{name}#{count}")
    count += 1

    if count == 10
        all =
for dir in cwd
    #
