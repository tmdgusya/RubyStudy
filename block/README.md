# Block

- Ruby 에서 Block 은 do..end 로 둘러싸인 코드 덩어리이다
- 블록을 사용하는 방법은 두가지가 있다.

  - **중괄호를 사용하는 방법**
  - **do .. end 를 사용하여 블럭을 나타내는 방법**

- Block 은 익명 메소드와 비슷한 무언가라고 생각해도 좋다. 따라서 메소드와 같이 Argument 를 받을 수 있는데
  Argument 는 `|args1, args2, ...|` 과 같이 표기할 수 있다. 아래는 argument 를 받아 간단히 활용하는 모습이다. 자바의 Lambda 와 상당히 흡사하다. (형태는 매우 다르지만 Concept 적으로..?)

```ruby
array.each {|value| puts value}
```

- 위가 한줄로 표현할 수 있어 **중괄호 블럭** 을 사용한 예제이다.

```ruby
array.each do |value|
    sum += value
    puts value / sum
end
```

- 위처럼 익명 메소드에서 해야할 것들이 많다면, **do..end Block** 을 이용해 표기하자!

## 객체로서의 Block

```ruby
class ProcExample

    def pass_in_block(&action)
        @stored_proc = action
    end

    def use_proc(parameter)
        @stored_proc.call(parameter)
    end
end

eg = ProcExample.new

eg.pass_in_block {|param| puts "This Block is Object ? #{param}"}

eg.use_proc("YES !!!")

```

- 위의 코드는 블록을 객체로서 저장하여 활용하는 코드이다. 이를 활용하여 콜백 으로도 활용할 수 있다.
  아래와 같이 메소드를 통해 return 받고 해당 메소드를 실행시킬 수도 있다.

```ruby
def excute_block_object_to_method(&block)
    block
end

bo = excute_block_object_to_method { |param| puts "Is Block Excute? #{param}" }

bo.call("YES!")
```

- 위에서 보여준 몇가지 방법으로 Block 을 관리하는 아이디어는 상당히 유용하기에 루비에서는 블록을 객체로 반환하는 메소드를 두가지나 지원한다. `lambda` 와 `Proc.new` 를 통해 지원한다.

## Lambda 를 통한 Block 생성

```ruby
block = lambda { |param| puts "Block Method to Lambda #{param}"}
block.call "LAMBDA!!!"
```

## Block 은 Closure 이기도 하다.

- 블록 내부에서 블록의 외부 스코프에 있는 지역 변수도 참조 가능하다.

```ruby
def n_times(thing)
    lambda {|n| thing * n}
end

p1 = n_times(23)
puts p1.call 3 # result 69
```

- n_times 메소드는 **이 메소드의 매개변수 thing 을 참조하는 Proc 객체를 반환**한다.

```ruby
m1 = -> arg1 {puts "print #{arg1}"}
m2 = -> (arg1, arg2) {puts "print multi value : #{arg1}, #{arg2}"}

m1.call "arg"
m2.call 1,2

=begin
result
- print arg
- print multi value : 1, 2
=end
```

- `->` 는 루비 개발자가 lambda 를 연상시킨다 하여 `->` 를 사용할 수 있다.

## lambda 조금 더 파헤치기

-
