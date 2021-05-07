# Hash

## for-each

- 아래 처럼 for-each 를 사용하는 방식도 있으니, Luby 가 지향하는 DRY 원칙에 따라 아래와 같은 코드도 작성가능하다.

```ruby
words = {"roach" => 1, "is" => 2, "dev" => 3}

words.each do |word, count|
    puts "#{word} : #{count}"
end
```
