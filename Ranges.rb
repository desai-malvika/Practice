digits = 1..10

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

num = gets.chomp.to_i

digits.each do |digit|
  while digit <= 10 do
    value = num * digit
    puts "#{num} * #{digit} = #{value}"
    digit += 1
  end 
end