# def coffee
#   puts self
# end

# coffee

class Example
  def do_something
    banana = "variable"
    puts banana
    puts self.banana
  end
  def banana
    "method"
  end
end
Example.new.do_something