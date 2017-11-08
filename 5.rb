class Dessert
    def initialize(name="", calories=0)
        @name, @calories = name, calories
    end
    attr_accessor :name, :calories
    def healthy?
        calories <200 ? true : false
    end
    def delicios?
        true
    end
end
a = Dessert.new()
b = Dessert.new("Apple", 76)
puts a.name
a.calories = 2245
a.name = "Pinapple"
puts a.class
puts a.healthy?
puts a.delicios?
puts a.inspect
puts b.inspect
