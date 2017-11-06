STDOUT << 'Разработайте метод palindrome?(string), который будет определять, подана ли ему на вход строка
string палиндром, т.е. строка, читающаяся одинаково с начала и с конца, при условии
игнорирования пробелов, знаков препинания и регистра. Тесты для примеров и проверки:
palindrome?("A man, a plan, a canal -- Panama") # => true
palindrome?("Madam, I\'m Adam!") # => true
palindrome?("Abracadabra") # => false (nil is also ok)


'





def downcase_UTF8(a)
   a = (a.ord + 32).chr(Encoding::UTF_8) if ( (1040..1071).cover? a.ord) ||((65..90).cover? a.ord)
   a
end
def palindrome?(arg)
        if arg.nil?
            puts "Чистая строка: nil"
            return false
        else
            temp = ""
            arg.each_char {|pp|  temp = temp+downcase_UTF8(pp) unless pp =~ /[^"а-яА-Яa-zA-ZёЁ"]/}
            puts "Чистая строка: #{temp}"
            temp == temp.reverse
    end
end




#куча примеров, в том числе и пустая строка
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
