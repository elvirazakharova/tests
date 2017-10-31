def count_words(arg1)
    arg1.downcase.scan(/\w+/).inject(Hash.new{ 0 }){ |result, i| result[i] += 1
    result
}    
end

a = "A man, a plan,           a canal -- Panama"
puts "#{count_words(a)}"
puts "#{count_words("Doo bee doo bee doo")}"
