# Enumerator

- Ruby 의 Enum 은 배열이나 해시에 대해 `to_enum` 메소드를 호출하는 것만으로 enum 을 획득할 수 있다.

```ruby
a = ["Roach", "1", "2"]

enum_a = a.to_enum
```

## each_with_index

- 예를 들어 Enumerable 모듈에는 each_with_index 메소드가 정의되어 있다. 아래와 같이 사용 가능하다.

```ruby
result = []

"cat".each_char.with_index {|item, index| result << [item, index]}

=begin
sameMethod => "cat".each_char.each with_index {|item, index| result << [item, index]}
=end

p result

# result => [["c", 0], ["a", 1], ["t", 2]]
```

조금 더 명시적으로 Enumerator 를 생성한다고 아래와 같이 알려줄 수 도 있다.

```ruby
enum = "cat".enum_for(:each_char)

p "Enum : " + enum.to_a.to_s

# Enum : [\"c\", \"a\", \"t\"]
```
