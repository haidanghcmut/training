class Animal
    def make_sound
      raise NotImplementedError, "Subclasses must implement the 'make_sound' method."
    end
  end
  
  class Dog < Animal
    def make_sound
      puts "Woof!"
    end
  end
  
  class Cat < Animal
    def make_sound
      puts "Meow!"
    end
  end
  
  class Cow < Animal
    def make_sound
      puts "Moo!"
    end
  end
  
  animals = [Dog.new, Cat.new, Cow.new]
  
  animals.each do |animal|
    animal.make_sound
  end