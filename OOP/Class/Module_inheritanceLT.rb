# module Animal
#     def speak
#       puts "The animal makes a sound."
#     end
#   end
  
#   module Dog
#     include Animal
  
#     def speak
#       puts "The dog barks."
#     end
#   end
  
#   class GoldenRetriever
#     include Dog
#   end
  
#   golden = GoldenRetriever.new
#   golden.speak

# module MyModule
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    def instance_method
      puts "This is an instance method"
    end
  
    module ClassMethods
      def class_method
        puts "This is a class method"
      end
    end
  end
  
  class MyClass
    include MyModule
  end
  
  obj = MyClass.new
  obj.instance_method  
  MyClass.class_method   