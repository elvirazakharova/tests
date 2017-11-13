STDOUT << "Реализуйте метод attr_accessor_with_history который предоставляет ту же фунциональность, что и
attr_accessor, но также записывает всю историю изменения атрибута. Пример фунционирования:
class Foo
 attr_accessor_with_history :bar
end
f = Foo.new # => #<Foo:0x127e678>
f.bar = 3 # => 3
f.bar = :wowzo # => :wowzo
f.bar = 'boo!' # => 'boo!'
f.bar_history # => [nil, 3, :wowzo, 'boo!']

"

class Class
  def attr_accessor_with_hystory(*methods)
    methods.each do |method|
      raise TypeError.new("method name  is not symbol") unless method.is_a?(Symbol)
      define_method("initialize") do
         instance_variable_set("@#{method}_hystory", [nil])
      end
      define_method(method) do
        instance_variable_get("@#{method}")
      end
      define_method("#{method}=") do |v|
        instance_variable_set("@#{method}", v)
        instance_variable_set("@#{method}_hystory", instance_variable_get("@#{method}_hystory") << v)
      end
      define_method("#{method}_hystory") do
        instance_variable_get("@#{method}_hystory")
      end      
    end
  end
end
class Foo
    attr_accessor_with_hystory :bar
end
f = Foo.new
f.bar = 1
f.bar = :wowzo
f.bar = "boo!"
puts f.bar_hystory
