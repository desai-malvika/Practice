puts "Enter a number"
num = gets.chomp.to_i
i = 1
while i <= 10 do
  value = num * i
  puts "#{num} * #{i} = #{value}"
  i += 1
end


