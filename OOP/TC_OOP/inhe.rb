class Animal 
    def initialize(name, age)
        @name = name
        @age = age
    end

    def move(animal)
        puts "#{animal} is moving"
    end
end

class Dog < Animal
    def initialize(name, age, breed)
        super(name, age)
        @breed = breed
    end

    def bark
        puts "Woof!"
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

dog = Dog.new("Fido", 4, "Golden Retriever")
dog.move(dog)
dog.bark

cat = Cat.new("Whiskers", 2, "Tabby")
cat.move(cat)
cat.meow