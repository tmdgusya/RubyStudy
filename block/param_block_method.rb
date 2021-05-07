m1 = -> arg1 {puts "print #{arg1}"}
m2 = -> (arg1, arg2) {puts "print multi value : #{arg1}, #{arg2}"}

m1.call "arg"
m2.call 1,2