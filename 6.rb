STDOUT << 'Создайте класс JellyBean расшряющий класс Dessert новыми геттерами и сеттерами для атрибута
flavor. Измените метод delicious?, он должен возвращать false только в тех случаях, когда flavor
равняется "black licorice"

'

class Dessert
    def initialize(name, calories)
        @name, @calories = name, calories
    end
    def to_s
      "(#@name, #@calories)"
    end
    def name; @name; end
    def name=(value); @name = value; end    
    def calories=(value); @calories = value; end
    def healthy?
        calories <200 ? true : false
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
    def to_s
      "(#@name, #@calories, #@flavor)"
    end
    attr "flavor", true
    #def flavor; @flavor; end
    #def flavor=(value); @flavor = value; end  
    def delicious?
        @flavor != "black licorice" ? true : false
    end
end



b = JellyBean.new("Мишкааа", 555, "black licorice")
puts b
puts b.delicious?
