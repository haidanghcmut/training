class ClassName
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def say_hello
        puts "Hello #{@name}"
        puts "Your age is #{@age}"
    end
end

person1 = ClassName.new("John", 20)
puts person1.say_hello