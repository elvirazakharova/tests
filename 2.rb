a = "A man, a plan,           a canal -- Panama"
b = Hash.new(0)
a.downcase.scan(/\w+/).each {|i| b[i] = b[i]+1 }
puts b