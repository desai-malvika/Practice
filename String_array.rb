class Assignment1
  @@arr = ["abcc", "ksjdj", "sjwdnd"]

  def length_finder 
    length_arr = []
    puts "original string is #{@@arr}"
    @@arr.each { |n| n.length.to_i 
      length_arr << n.length}
    puts "new array is #{length_arr}"
  end
  
end
 
obj = Assignment1.new
obj.length_finder