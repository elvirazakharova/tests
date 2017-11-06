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


def attr_accessor_with_history (bar)
    def bar
        @bar
    end
    def bar=(value)
        @bar = value
        @history ? @history.push(value) : @history = [nil]
    end
    def history
        @history ? "#{@history}" : "[nil]"
    end
    puts b = "#{bar}_history"
    alias bar_history history
end

class Foo
    attr_accessor_with_history :bar
    def to_s
        "class #{self.class}, \"#{self.bar}\""
    end
end


f = Foo.new # => #<Foo:0x127e678>
puts f.bar_history 
f.bar = 3 # => 3
f.bar = :wowzo # => :wowzo
f.bar = 'boo!' # => 'boo!'
puts f.bar
puts f
puts f.bar_history # => [nil, 3, :wowzo, 'boo!']
f.bar = 4324
f.bar = 3
f.bar = "dsfsd"
f.bar = nil
f.bar = "sds"
puts f.bar_history
