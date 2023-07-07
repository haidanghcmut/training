module MyInterface
  def method1
    raise NotImplementedError, "This method must be implemented by the including class."
  end

  def method2
    raise NotImplementedError, "This method must be implemented by the including class."
  end
end

class MyClass
  include MyInterface

  def method1
    puts "This is an implementation of method1."
  end
end

my_object = MyClass.new
my_object.method1
my_object.method2