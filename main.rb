require "fileutils"
require "os"
require "securerandom"
require "dir"

OS.windows? ? sep = "\\" : sep = "/"  
cwd = FileUtils.pwd()

count = 0

while true
    name = SecureRandom.hex
    Sleep(1)
    FileUtils.mkdir("#{cwd}#{sep}#{name}#{count}")
    count += 1

    if count == 10
        all = Dir.glob('*').select {|f| File.directory? f}
        for dir in cwd
    #
