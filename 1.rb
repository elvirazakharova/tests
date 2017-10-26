a = "А роза упала на лапу азора?," #"А роза упала на лапу азора?,"   "Азоза"
if a.gsub!(/[ ,?.-]/, "")
#  puts "Тут есть не только буквы"
end
puts a
if (a.reverse).slice(/#{a}/i)
  puts "Palinom"
end