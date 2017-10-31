#downcase дополненный для русского языка
def downcase_r (arg)
    alpha1 = (('А'..'Я').to_a )<<'Ё'
    alpha2 = (('а'..'я').to_a )<<'ё'
    for i in 0..(arg.length-1) do
        #puts "i= #{i}"
        if  alpha1.index(arg[i])
            arg[i] = alpha2[alpha1.index(arg[i])]
        end
    end
    #arg1 = arg.join('')
    arg.downcase
end
#функция палином
def palinom?(arg1)
    if arg1 
      rez = false
      arg2 = "" #здесь будет лежать "чистая" строка
      arg1.each_char { |aa| arg2.concat(aa) if /["а-яА-Яa-zA-ZёЁ"]/ =~ aa } # каждую букву пишем в новую строку.
      arg2 = downcase_r(arg2)
      puts "Чистая строка: #{arg2}"
      if arg2 == arg2.reverse && arg2 != ""
        rez = true
      end
    else
       rez = false
  end
  rez #return убрала. 
end
#куча примеров, в том числе и пустая строка
a = "А роза упала на лапу азора?, ---------12324235346" #  "Азоза"
puts palinom?(a)
b = nil
puts palinom?(b)
c = "DSDS     (ssD) s     d!"
puts palinom?(c)
d = "Ни разу не палином"
puts palinom?(d)
d = "АБЫар fdfff D        f--РАыба"
puts palinom?(d)
#STDIN.getc