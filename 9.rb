STDOUT << 'Адаптируйте ваше решение из Упражнения 1, чтобы вместо palindrome?("foo") вы могли его
использовать как "foo".palindrome?
Адаптируйте ваше решение из Упражнения 1 так, чтобы оно работало для Enumerable.
[1,2,3,2,1].palindrome? # => true

'

class String
    def palindrome?
        temp = ""
        self.downcase.each_char {|pp|  temp = temp+pp if pp =~ /["а-яА-Яa-zA-ZёЁ"]/}
        temp == temp.reverse   
    end
end
class Array
    def palindrome?
        self == self.reverse
    end
end
p = "А роза упала на лапу ------азора" 
p1 = 'FdFDfdfdfdffffff'
puts p1.palindrome?
puts p.palindrome?
puts [1,2,3,2,1].palindrome?
