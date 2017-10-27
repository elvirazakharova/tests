def count_words(arg1)
b = Hash.new(0)
arg1.downcase.scan(/\w+/).each {|i| b[i] = b[i]+1 }
return b
end

a = "A man, a plan,           a canal -- Panama"
puts "#{count_words(a)}"
puts "#{count_words("Doo bee doo bee doo")}"