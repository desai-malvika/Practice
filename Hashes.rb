new_arr = [ {name: 'Malvika', occupation: 'Engieneer', hobbies: 'Painting'},
  {name: 'Desai', occupation: 'HR', hobbies: 'Swimming'},
  {name: 'Hello', occupation: 'CEO', hobbies: 'Painting'},
  {name: 'World', occupation: 'Associate software engieneer', hobbies: 'Swimming'}
]


new_arr.each do |hash|
puts '----------'
hash.each do |key,value|
puts (key.to_s + '= ' + value.to_s)
end
end