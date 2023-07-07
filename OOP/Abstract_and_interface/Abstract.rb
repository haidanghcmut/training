
# module AbstractClass
#     def abstract_method
#       raise NotImplementedError, "This method must be overridden in a subclass"
#     end
#   end
  
#   class MyClass
#     include AbstractClass
  
#     def concrete_method
#       puts "This is a concrete method."
#     end
#   end
  
#   class MySubClass < MyClass
#     def abstract_method
#       puts "This is an implementation of the abstract method."
#     end
#   end
  
#    class MydemoClass
  
#     def abstract_method
#       puts "This is a concrete method."
#     end
#   end
  

#   my_object = MydemoClass.new
#   my_object.abstract_method

# module AbstractModule
#   def public_method
#     abstract_method
#   end

#   private

#   def abstract_method
#     raise NotImplementedError, 'You should implement abstract_method when include AbstractModule'
#   end
# end

# class Child
#   include AbstractModule
# end

# Child.new.public_method
# # => NotImplementedError (You should implement abstract_method when include AbstractModule)

# class Child
#   include AbstractModule

#   private

#   def abstract_method
#     'implemented method'
#   end
# end

# Child.new.public_method
# # => implemented method


class Shape2D
  def initialize
    raise NotImplementedError.
      new("#{self.class.name} is an abstract class.")
  end
  def area
    raise NotImplementedError.
      new("#{self.class.name}#area is an abstract method.")
  end
end


class Square < Shape2D
  def initialize(length)
    @length = length
  end

  def area
    @length ** 2
  end
end

Square.new(10).area                              # => 100

# NotImplementedError: Shape2D is an abstract class.
