module Denezhka
    RATES = {:euro => 43.61, :euros => 43.61,
            :dollar =>32.26, :dollars =>32.26,
            :ruble =>1.0, :rubles =>1.0}
    def dollar; self*RATES[:dollar]; end
    def euro; self*RATES[:euros]; end
    def ruble; self*RATES[:ruble]; end
    alias dollars dollar
    alias rubles ruble
    alias euros euro
    def in(x)
        self/RATES[x]
    end
end
class Numeric
    include Denezhka
end
class Array
    include Denezhka
    alias ddd dollar
    def dollar; self.each {|x| x.ddd} ; end

end
puts 5.dollars
puts 5.dollars.in(:euros)
puts 10.euros.in(:rubles)
puts 1000.rubles.in(:ruble)
