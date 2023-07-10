class Animal
    def initialize(name, age)
        @name = name
        @age = age
    end

private
    def move(animal)
        puts "#{animal} is moving"
    end
end

class Cat < Animal
    def initialize(name, age, breed)
        super(name, age)
        @breed = breed
    end

    def meow
        puts "Meow!"
    end
end

cat = Cat.new("Whiskers", 2, "Tabby")
puts cat.move(cat)