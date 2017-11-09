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

class Module
    def attr_accessor_with_history(bar)
         class_eval " 
                        @@#{bar}_hystory = [nil] 
                        def #{bar}; @#{bar}; end
                        def #{bar}=(value)
                            @#{bar} = value
                            @@#{bar}_hystory << value
                        end
                        def #{bar}_hystory;  @@#{bar}_hystory; end
                    "
    end
end
class Foo       
    attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
puts "#{f.bar_hystory}"
