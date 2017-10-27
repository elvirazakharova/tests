#downcase не работает с русскими буквами.
#gem install activesupport

def palinom?(arg1)
  rez = false
  arg2 = "" #здесь будет лежать "чистая" строка
  #тут привожу варианты, как это можно сделать
  #arg2 = (arg1.tr(" _ -,.?", '')).downcase  # вариант 1. можно заменить все символы пунктуации на пустоту
  #arg2 = (arg1.tr("^a-zA-Zа-яА-Я", '')).downcase #вариант 2. можно заменить все, что не буквы (русские или английские) на пустоту
  #arg1.downcase.scan(/["а-яА-Яa-zA-Z"]/).each { |aa| arg2<<aa } #вариант 3. можно сделать такие странные действия \w не подойдет совсем
  #arg1.downcase.scan(/["а-яА-Яa-zA-Z"]/).each { |aa| arg2.concat(aa) } #вариант 4. то же самое, что и 3
  #arg1.downcase.each_char { |aa| arg2.concat(aa) if /["а-яА-Яa-zA-Z"]/ =~ aa } #вариант 5. каждую букву пишем в новую строку.
  arg1.downcase.each_char { |aa| arg2.concat(aa) if /["а-яА-Яa-zA-Z"]/ =~ aa } #вариант 5. каждую букву пишем в новую строку.
  puts "Чистая строка: #{arg2}"
  if arg2 == arg2.reverse && arg2 != ""
    rez = true
  end
  return rez
end

a = "А роза упала на лапу азора?, ---------12324235346" #  "Азоза"
puts palinom?(a)
b = ""
puts palinom?(b)
c = "DSDS     (ssD) s     d!"
puts palinom?(c)
d = "Ни разу не палином"
puts palinom?(d)
STDIN.getc