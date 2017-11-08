def acom(a, b) #ищет, есть ли в формируемом блоке текущее слово из исходного
    flag = false
    a.each {|aa| flag = !flag if anagram(aa[0], b) }
    flag 
end

def anagram(a, b) 
  a&&b&&a.chars.sort.join == b.chars.sort.join #а все было куда проще...
end

def combine_anagrams (a)
    temp = []
    a.each do |aa| 
                temp[temp.length] = a.select {|aaa|  anagram(aa, aaa) } unless acom(temp, aa)
                temp.push()
            end
    temp
end

a = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
a =  combine_anagrams(a)
a.each { |bb| 
            puts "#{bb}"
    }
