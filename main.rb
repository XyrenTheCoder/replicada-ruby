require "fileutils"
require "os"
require "securerandom"
require "dir"

def pass
end

OS.windows? ? sep = "\\" : sep = "/"  
cwd = FileUtils.pwd()

count = 0

while count < 200
    name = SecureRandom.hex
    sleep(1)
    FileUtils.mkdir(name)
    FileUtils.cd(name)
    FileUtils.cp("../#{ARGV[0]}", cwd)
    count += 1
end
