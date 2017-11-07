class String
    alias d downcase
    def downcase
       temp = ""
       self.each_char do |a| 
           case a.ord 
           when (1040..1071) #, (65..90) #А-Я #A-Z
                temp << (a.ord + 32).chr(Encoding::UTF_8) 
           when 1025 #Ё
                temp << 1105.chr(Encoding::UTF_8) 
           else #when (1040+32..1071+32), (65+32..90+32),  1105
               temp << a.d
           end 
        end
        temp
    end
end
def palindrome?(arg)
        temp = ""
        arg.downcase.each_char {|pp|  temp << pp if pp =~ /["а-яА-Яa-zA-ZёЁ"]/} if arg
        arg ?  temp == temp.reverse   : false
    
end

puts palindrome?("Ёё")
a = "А роза упала на лапу азора?, ---------12324235346"
puts palindrome?(a)
b = nil
puts palindrome?(b)
c = "DSDS     (ssD) s     d!"
puts palindrome?(c)
