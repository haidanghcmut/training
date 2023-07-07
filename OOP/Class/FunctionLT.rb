# class Person
# def initialize(name, age)
#     @name = name
#     @age = age
# end

# # instance method
# def say_hello(name)
#     puts "Hello, #{name}!"
# end

# # class method
# def self.say_bye(name)
#     puts "Bye, #{name}!"
# end

# def +(obj)
#     return Person.new("#{self.name} & #{obj.name}", "#{self.age}" + obj.age)
# end
# end


# a = Person.new("A", 10)
# b = Person.new("B", 20)
# puts a + b.inspect

# class Comparable_operator
#     include Comparable
#     attr_accessor:name
 
#     # Initialize the name
#     def initialize(name)
#         @name=name
#     end
#     def <=>(obj)
#         return self.name<=>obj.name
#     end
# end
# puts "Operator Overloading"<=>"Operator Overloading"

# Ruby program of Operator Overloading
# class Car
# 	attr_accessor:name, :color

# 	# Initialize the name and color
# 	def initialize(name, color)
# 		@name = name
# 		@color = color
# 	end
# 	def +(obj)
# 		return Car.new("#{self.name}#{obj.name}",
# 				"#{self.color}#{obj.color}")
# 	end
# end
# a = Car.new("Mercedes", "Red")
# b = Car.new("Audi", "Silver")
# puts (a+b).inspect


# class Tester
#     attr_accessor:num
 
#     # Initialize the num
#     def initialize(num)
#         @num = num
#     end
 
#     # Define + to do addition
#     def +(obj)
#         return @num+obj
#     end
 
#     # Define * to do Multiplication
#     def *(obj)
#         return @num*obj
#     end
#     def **(obj)
#         return @num**obj
#     end
# end
# a=Tester.new(5)
# puts a + 3
# puts a * 3
# puts a ** 3

# Singleton class
tom = Animal.new("Tom")
def tom.tom_method
  p "Catch Jerry"
end

# hoặc

class << tom
  def tom_method
    p "Catch Jerry"
  end
end

puts tom.tom_method