class Animal
  def name (name)
    puts "#{name}"
  end
end
class Cat < Animal
  def name
    super("Cat")
  end
end
cat = Cat.new
cat.name