STDOUT << "Необходимо реализовать возможность Декартового Произведение . Пример:
a × b = [ [:a,4], [:a,5], [:b,4], [:b,5], [:c,4], [:c,5] ]
Создайте класс CartesianProduct, на вход конструктора которого можно подать две
последовательности. Определите метод each, ожидающий на входе блок и применяющий этот блок
к каждому элементу полученного произведения. Пример функционирования:
c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]
c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
_______________________________________________________________________________________

"

class CartesianProduct
    attr_accessor :x
    attr_accessor :y
    def initialize(*arg) 
		arg[0] ? @x = arg[0] : @x = nil
		arg[1] ? @y = arg[1] : @y = nil
	end
    def multiplication
        c = []
        temp = []
        temp = self.x.each {|xx| self.y.each { |yy| 
                                                temp<<[xx, yy] #.dup
                                                c = temp
                                                #puts "temp = #{temp}"
                                                }}
        c #после завершения работы each temp = 1,2 я не поняла почему.
        
    end
    def each
        yield self.multiplication
    end
end
a = CartesianProduct.new()
a.x = [1, 2]
a.y = ["A", "B", "C"]
a.each { |elt| puts elt.inspect }
c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
