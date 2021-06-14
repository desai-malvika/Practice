class FirstClass
  def local_var
    puts "enter first number"
    local_var1 = gets.chomp.to_i
    puts "enter second number"
    local_var2 = gets.chomp.to_i
    puts "Addition of #{local_var1} and #{local_var2} is #{local_var1 + local_var2}"
  end

  class_obj = FirstClass.new
  class_obj.local_var
  
end