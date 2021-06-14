class FirstClass
  @@class_var1 = 20
  @@class_var2 = 10
  def class_var1
    puts "division of #{@@class_var1} and #{@@class_var2} is #{@@class_var1 / @@class_var2}"
  end

  def class_var2
    puts "addition of #{@@class_var1} and #{@@class_var2} is #{@@class_var1 + @@class_var2}"
  end
end

class_obj = FirstClass.new
class_obj.class_var1
class_obj = FirstClass.new
class_obj.class_var2
