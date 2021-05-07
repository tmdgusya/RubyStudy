hello = Proc.new { |name| puts "Hello, #{name}!"}
hello.call # result "Hello, !" 정상적으로 실행됨

hello.call(1,2,3,4,5) #result "Hello, 1!" 정상적으로 실행됨