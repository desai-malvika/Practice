begin
  file = open("/unexistant_file")
  if file
     puts "File opened successfully"
  end
rescue
     file = STDIN
end
print file, "==", STDIN, "\n"

begin
  file = open("/unexistant_file")
  if file
     puts "File opened successfully"
  end
rescue
  fname = "existant_file"
  retry
end

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
  # ..
  # process information
end
promptAndGet("Name:")