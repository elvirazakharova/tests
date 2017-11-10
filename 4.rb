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

def combine_anagrams (a)
    raise "nil" unless a 
    a = a.group_by {|i|  i.downcase.chars.sort.join} 
    a = a.values 
    rescue Exception => e
    puts e.message
end


a1 = ["frff", "s", "fffr", "ffrf", "rsss", "rsw", "rf", "frf", "ssss", "srw", "wrs", "rws"]
a = ['Cars', 'for', 'potatoes', 'rAcs', 'four', 'scar', 'creams', 'scream']
puts combine_anagrams(a).inspect
