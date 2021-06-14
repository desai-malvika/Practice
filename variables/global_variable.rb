$global_variable1 = 10
$global_variable2 = 3
class FirstClass
  def global_var1
    puts "Substraction of #{$global_variable1} and #{$global_variable2} is #{$global_variable1 - $global_variable2}"
  end
end
class SecondClass
  def globel_var2
    puts "Mutiplication of #{$global_variable1} and #{$global_variable2} is #{$global_variable1 * $global_variable2}"
  end
end

class_obj = FirstClass.new
class_obj.global_var1
class_obj = SecondClass.new
class_obj.globel_var2
