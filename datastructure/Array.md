# Array

- 다른 언어들과 같이 INDEX 0 부터 시작한다.
- 음수 INDEX 값은 뒤부터 계산한 위치로 계산된다.

```ruby
arr = Array.[](4020, 'roach', "GOOD")
arr = Array[4020, 'roach', "GOOD"]
arr = [4020, 'roach', "GOOD"]
```

## new Method

```ruby
Array.new => []
Array.new(2) => [nil, nil]
Array.new(5, "A") => ["A", "A", "A", "A", "A"]
```

## Hash in Array..

- 아래와 같이 (Hash.new) 로 하면 동일 인스턴스가 생겨서, 같이 공유하게 된다.

```ruby
a = Array.new(2, Hash.new)
a[0]['cat'] = 'feline'
a   #=>  [{'cat' => 'feline'}, {'cat', feline}]

a[1]['cat'] = 'felix'
a   #=>  [{'cat' => 'felix'}, {'cat', felix}]
```

- 단일 인스턴스를 사용하기 위해서는 `{}` 를 이용해야 한다.

```ruby
a = Array.new(2) { hash.new } # 여러 개의 인스턴스
a[0]['cat'] = 'feline'
a   #=>  [{'cat' => 'feline'}, {}]
```

## for-each

```ruby
list = ['roach', 'is', 'dev']

for i in 0...list.length
    puts list[i]
end

for word in list
    puts word
end
```

##
