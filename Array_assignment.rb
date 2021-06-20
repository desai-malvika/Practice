class RemoveArray
  
  def Example
    a = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees', 'pine tree']
    a.delete_if { |word| word.start_with?("s", "w") }
    puts a
  end

end

obj = RemoveArray.new
obj.Example