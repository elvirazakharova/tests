STDOUT << 'Сделайте возможным выполнять следующий код:
5.dollars.in(:euros)
10.euros.in(:rubles)
Вы должны поддерживать следующие валюты: dollars, euros и rubles, курс обмена установите
следующий: $1 = 32,26 руб., 1€ = 43,61 руб.
Должны подерживаться как единственное, так и множественное именование метода, т.е.
1.dollar.in(:rubles) и 1.ruble.in(:euro) должны работать.


' 


module Denezhka
    RATES = {"euro" => 43.61, "euros" => 43.61, "dollar" =>32.26, "dollars"=>32.26, "ruble"=>1.0, "rubles"=>1.0}
    def dollar; self*RATES["dollar"]; end
    def euro; self*RATES["euros"]; end
    def ruble; self*RATES["ruble"]; end
    alias dollars dollar
    alias rubles ruble
    alias euros euro
    def in(x)
        self/RATES[x.to_s]
    end
end
class Numeric
    include Denezhka
end
puts 5.dollars
puts 5.dollars.in(:euros)
puts 10.euros.in(:rubles)
puts 1000.rubles.in(:ruble)
