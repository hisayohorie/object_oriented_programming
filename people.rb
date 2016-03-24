class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greeting
    puts "Hi my name is '#{name}'"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
chris.greeting

christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn

#chris.learn and christina.teach don't work because the teach/learn methods are
#local to Instructor/Student class and can't be accessed from outside of the class
