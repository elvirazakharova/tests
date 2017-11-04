=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков определённого
слова (или словосочетания), что в результате даёт другое слово или словосочетание.
Реализуйте метод combine_anagrams(words), который принимает на вход массив слов и разбивает их
в группы по анаграммам, регистр букв не имеет значение при определении анаграмм. Тест для
примера и проверки:
# input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
# output: [ ["cars", "racs", "scar"],
# ["four"],
# ["for"],
# ["potatoes"],
# ["creams", "scream"] ]
=end





def count_words(arg1) #тащит хэш с буквами в слове и их количеством
  hash1 = Hash.new(0)
  arg1.downcase.scan(/\w/).each {|i| hash1[i] = hash1[i]+1 }
  return hash1
  
end

def anagram(arg2, arg3) #Эти два слова анаграммы?
  #puts count_words(arg2)
  #puts count_words(arg3)
  if arg2&&arg3&&count_words(arg2) == count_words(arg3)
   flag = true
    #puts "Ok"
  else
   flag = false
   #puts "oioioioi"
  end
  return flag
end

def combine_anagrams (arg4)
    b = []
    arg4.each {|aa|
        ifExist = 0
        b.each_index { |i| 
            if (anagram(b[i][0], aa)) 
                b[i].push(aa)  
                ifExist = 1
            end
        }
            if(ifExist == 0)       
                b.push([aa]) 
            end
            
    }
    b.each { |bb| 
            puts "#{bb}"
    }
end

=begin
def combine_anagrams (arg4)
    b = Array.new #список списков
    i = 0 
    j = Array.new
    j[i] = 0 
    b[i] = Array.new
    b[i][j[i]] = arg4[0]
    flag2 = 1 
    arg4.each {|aa|                 if (flag2 == 0) #индусий код. Потому что просто
                  k = 0 #бродилка по списку списков 
                  flag = 0 #маркер записи элемента
                  while ((k<i)||(k==i)) do #бродить сверху вниз
                    if(anagram(aa, b[k][0]))
                      j[k] = j[k]+1
                      b[k][j[k]] = aa
                      flag = 1 #элемент записан
                    end
                    k = k+1 
                  end
                  if(flag == 0) #если элемент не записан
                    i = i+1 #новая строка в списке у нее и номер новый и сама она новая, и тоже массив.
                    b[i] = Array.new
                    j[i]=0 #количество слов в последней(новой строке). т е 1 шт
                    b[i][j[i]] = aa
                    flag = 1
                  end           else flag2 = 0 #индусий код. Потому что просто
                                end}
    b.each {|bb| puts "#{bb}"}
end
=end



a1 = ["frff", "s", "fffr", "ffrf", "rsss", "rsw", "rf", "frf", "ssss", "srw", "wrs", "rws"]
a = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(a)
