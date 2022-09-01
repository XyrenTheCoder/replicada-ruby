=begin
<DISCLAIMER>
THIS CODE REPLICATES ITSELF AND WILL CREATE NEW DIRECTORIES
PLEASE MIND THAT THIS WOULD FUCK UP YOUR DIRECTORIES, INCLUDING FILES AND FOLDERS
***DO NOT RUN THIS FILE IN ANY IMPORTANT DIRECTORIES***

self-replicating ruby file - Replicada by archisha69
=end

require "fileutils"
require "os"
require "securerandom"
require "dir"

OS.windows? ? sep = "\\" : sep = "/"  
cwd = FileUtils.pwd()

count = 0

while count < 200
    name = SecureRandom.hex
    sleep(1)
    FileUtils.mkdir(name)
    FileUtils.cd(name)
    FileUtils.cp("../#{ARGV[0]}", cwd)
    FileUtils.cd(cwd)
    count += 1
end
