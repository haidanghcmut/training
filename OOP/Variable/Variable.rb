# Local Variable
# def helloWorld
#     hello_world = "Hello world!"
#     puts hello_world
# end

# helloWorld
# puts hello_world

# Global Variable
# def print_global
#     $global_variable = "Đăng"
#     puts "Global variable in method inside is #$global_variable"
# end
# print_global
# puts "Global variable outside method is #$global_variable"

# Instance Variable
# class HelloWorld
#     def initialize p
#         @person = p
#     end
#     def speak
#         puts "#{@person} says 'Hello world'"
#     end
# end

# hello = HelloWorld.new "Alex"
# hello.speak

# Class Variable

# class HelloWorld
#     @@person = "Alex"
#     def setPerson p
#         @@person = p
#     end
    
#     def speak
#         puts "#{@@person} says 'Hello world'"
#     end
# end
# hello = HelloWorld.new
# hello.speak
# hello.setPerson "Micheal"
# hello.speak

# Constant
# class Example
#     VAR1 = 100
#     VAR2 = 200
#     def show
#        puts "Value of first Constant is #{VAR1}"
#        puts "Value of second Constant is #{VAR2}"
#     end
#  end
 
#  # Create Objects
#  object = Example.new()
#     object.show
