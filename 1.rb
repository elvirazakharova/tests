STDOUT << 'Разработайте метод palindrome?(string), который будет определять, подана ли ему на вход строка
string палиндром, т.е. строка, читающаяся одинаково с начала и с конца, при условии
игнорирования пробелов, знаков препинания и регистра. Тесты для примеров и проверки:
palindrome?("A man, a plan, a canal -- Panama") # => true
palindrome?("Madam, I\'m Adam!") # => true
palindrome?("Abracadabra") # => false (nil is also ok)


'
class String
    def clear_downcase_UTF8
       temp = ""
       self.each_char do |a| 
           case a.ord 
           when (1040..1071), (65..90) #А-Я #A-Z
                temp << (a.ord + 32).chr(Encoding::UTF_8) 
           when 1025 #Ё
                temp << 1105.chr(Encoding::UTF_8) 
           when (1040+32..1071+32), (65+32..90+32),  1105
               temp << a
           end 
        end
        temp
    end
end
def palindrome?(arg)
    arg ? arg.clear_downcase_UTF8 == arg.clear_downcase_UTF8.reverse : false
end



puts palindrome?("Ёё")
a = "А роза упала на лапу азора?, ---------12324235346"
puts palindrome?(a)
b = nil
puts palindrome?(b)
c = "DSDS     (ssD) s     d!"
puts palindrome?(c)
d = "Ни разу не палином"
puts palindrome?(d)
d = "АБЫар fdfff D        f--РАыба"
puts palindrome?(d)
