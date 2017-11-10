STDOUT << 'Создайте класс JellyBean расшряющий класс Dessert новыми геттерами и сеттерами для атрибута
flavor. Измените метод delicious?, он должен возвращать false только в тех случаях, когда flavor
равняется "black licorice"

'

class Dessert
    def initialize(name = "", calories = 0)
        @name, @calories = name, calories
    end
    attr_accessor :name, :calories
    def healthy?
        calories <200
    end
    def delicious?
        true 
    end
end
class JellyBean<Dessert
    def initialize(name, calories, flavor)
        super(name, calories)
        @flavor = flavor
    end 
    attr_accessor "flavor"
    def delicious?
        @flavor != "black licorice" 
    end
end



b = JellyBean.new("Мишкааа", 20, "black licorice")
puts b.inspect
puts b.delicious?
puts b.healthy?
puts Dessert.new().delicious?
