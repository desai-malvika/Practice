def find_frequency(sentence, word)
  print "frequency of the is "
  puts  sentence.downcase.split.count(word.downcase)
end

find_frequency('Ruby is The best language in the World','the');