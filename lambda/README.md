# Proc

- Procedure(절차) 라는 뜻으로 어떤 처리 과정을 담고 있다는 뜻입니다.
  `Proc.new` 는 블록으로 절차를 건네 받습니다. 사용방법은 아래와 같습니다.
  ```ruby
    pro = Proc.new do
        puts 'Hello, Proc!'
    end
  ```
- Proc.new 는 Proc 객체를 반환합니다. Proc 객체는 아래와 같이 실행할 수 있습니다.

```ruby
pro.call # => 'Hello, Proc!'
```

# Block

- Block 은 엄밀히 말하면 Proc 가 아닙니다. 단 메소드 선언시에 `&` 연산자를 통해서 블록을 명시적으로 Proc 객체로 받아올 수 있습니다.

```ruby
def hello(&b)
    b.call
end

hello {puts 'Hello, World!'}

#result 'Hello, World!'
```

# lambda

- 루비에서는 lambda 를 통해서도 Proc 객체를 만드는 방법이 가능합니다.

```ruby
pro = lambda{ puts 'Hello, world!' }

# SAME

pro = -> { puts 'Hello, world!' }
```

# default method to Proc

```ruby
def hello;
    puts "good"
end

hello_method = method(:hello)

puts hello_method.to_proc.lambda? #result true

hello_method.call
```

# 인자 검사 방식의 차이

```ruby
hello = Proc.new { |name| puts "Hello, #{name}!"}
hello.call # result "Hello, !" 정상적으로 실행됨

hello.call(1,2,3,4,5) #result "Hello, 1!" 정상적으로 실행됨
```

- 위와 같이 블럭은 인자 개수가 달라지더라도 에러가 발생하지 않고, 정상적으로 해석하여 실행됩니다.
  이런점에서 Proc 객체는 그냥 절차만 저장된 것이라고 해석할 수 있습니다.

```ruby
hello = lambda(name) {puts "Hello, #{name}!"}

hello.call # ArgumentError

hello.call(1,2,3,4,5) # ArgumentError
```

- 인자를 많이 넘기거나, 적게 넘길경우 `ArgumnetError` 가 발생합니다.

# Return 작동 방식의 차이
