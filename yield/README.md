# yield

- Ruby 의 Yield 는 Thread yield 의 느낌이 아닌것 같다. 연관된 Block 으로 연결지어주는 느낌인데
  백문이 불여일타라고 밑의 코드를 한번 보자

```ruby
def fib_up_to(max)
    i1, i2 = 1, 1
    while i1 <= max
        yield i1
        i1, i2 = i2, i1+i2
    end
end

fib_up_to(10) {|num| puts num}
```

- 위의 코드는 fibonacci 를 구현한 것이다. `yield i1` 으로 매개변수인 i1 을 넘겨주는데, 이는
  연관된 블록은 `{|num| puts num}` 으로 넘겨진다. 그래서 i1 -> num 으로 연결되게 되어 출력되게 된다.
  뭐 사실 while 문 안에 `puts i1` 을 해도 같을 것이다.

- 어떻게 보면 우리가 사용하는 each 구문도, yeild 를 통한 반복이 일어나는 것이다.

```ruby
[1, 2, 3, 4, 5].each do |value|
    puts value
end

# 이건 아래의 코드와 같다.

def print_(array)
  for i in 0...array.length
    yield array[i]
  end
end

print_([1, 2, 3, 4, 5]) {|value| puts value}
```
