class Person
   def initialize(name, id, num)
    @name = name
    @id = id
    @num = num
   end

   def info
    puts "Person name is #{@name}"
    puts "Person Id is #{@id}"
    puts "Person Num is #{@num}"
   end
  
end

obj = Person.new("Malvika Desai", "2", "1234567")
obj.info