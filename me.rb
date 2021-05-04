def say_hello(name)
    result = "Hello , " + name
    return result
end

def say_hello_2(name)
    result = "Hello , #{name}"
    return result
end

puts say_hello('Roach')
puts say_hello_2('Roach')