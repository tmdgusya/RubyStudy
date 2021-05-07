require_relative 'parent'

class Child < Parent

    #Override
    def say_hello
        puts "Override"
    end
end

p = Child.new

p.say_hello