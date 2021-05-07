def hello;
    puts "good"
end

hello_method = method(:hello)

puts hello_method.to_proc.lambda?

hello_method.call
