def palindrome(value)
  ans = value == value.reverse
  if value == value.reverse
    puts "#{value} is a palindrome"
  else
    puts "#{value} is not a palindrome"
  end
  puts "#{value.reverse}"
 end

 palindrome("HEH")