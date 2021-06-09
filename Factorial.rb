puts "Enter the number"
num = gets.chomp.to_i

i = 1
fact = 1

while i <= num  
    fact *= i
    i += 1
end

puts "The factorial of #{num} is #{fact}"