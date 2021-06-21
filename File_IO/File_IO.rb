#!/usr/bin/ruby
puts "Enter a value :"
val = gets
print "Hello World"
puts val
puts "Done"

a = "Hello World"
putc a

aFile = File.new("Dummy1.txt", "w")
aFile.close

File.open("Dummy2.txt", "w") do |aFile|
  # ... process the file
end

aFile = File.new("Dummy.txt", "r")
if aFile
   content = aFile.sysread(30)
   puts content
else
   puts "Unable to open file!"
end

aFile = File.new("Dummy.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

aFile = File.new("Dummy.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end

arr = IO.readlines("Dummy.txt")
puts arr[0]
puts arr[1]

IO.foreach("Dummy.txt"){|block| puts block}

File.rename( "Dummy.txt", "test2.txt" )

File.delete("Dummy1.txt")

File.open("test2.rb") if File::exists?( "test2.rb" )

File.file?( "text2.txt" ) 


File.readable?( "text2.txt" )   # => true
File.writable?( "text2.txt" )   # => true
File.executable?( "text2.txt" ) 

File.size?( "text2.txt" ) 

puts Dir.pwd
