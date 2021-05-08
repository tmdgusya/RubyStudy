# Module VS Class

## Module

Module 은 클래스에 메소드를 제공하기 위해 만든다. Java 로 치면 static Util 클래스 느낌이 강한것 같다.
일단 Module 은 **메서드와 상수의 집합** 을 뜻한다. 따라서 다른 곳에서 include, extend, prepend 를 통해 mixin 해서 재사용이 가능하다.
이렇게 mixin 해서 사용하는 메서드는 인스턴스 메서드라고 부르고, 객체 생성없이 모듈 자체에서 호출하는 메서드를 모듈 메서드라고 부릅니다.
모듈 메소드는 mixin 해도 사용할 수 없습니다.

## Ancestors

- 루비에서는 클래스가 생성될 때 ancestors 배열에 클래스 조상의 목록을 저장해 둡니다. ancestor 에는 이 클래스가 상속받는 모든 클래스, 자기자신
그리고 include 와 prepend 를 통해 Mixin 된 모듈들이 포함됩니다. 
  
## mixin

### include

- include 는 모듈에 정의된 메소드를 클래스에서 재사용하는 가장 쉬운 방법입니다. 클래스를 정의할때 module 을 include 하면, 부모클래스보다 
더 높은 우선순위로 배정됩니다. 
  
### prepend

- Ruby 2.0 부터 도입된 mixin 으로 prepend 는 모듈의 메소드를 그대로 사용하는 것이 아닌, 기존 메서드를 꾸며주는 역할을 합니다.
- 잘 보아두어야 할 것은 ancestors 의 MyModule 이 MyClass 의 앞전에 있다는 것이다.

```ruby
module MyModule
  def sum_of(numbers)
    result = super # MyClass#sum_of 호출
    "sum_of(#{numbers.inspect}) finished: #{result.inspect}"
  end
end

class MyClass
  prepend MyModule

  def sum_of(numbers)
    numbers.sum
  end
end

irb > MyClass.ancestors 
# => [MyModule, MyClass, Object, Kernel, BasicObject]
irb > MyClass.new.sum_of([1, 2, 3]) 
# => sum_of([1, 2, 3]) finished: 6
```

### extend

- 이건 좀 신기한데 class 의 method 로 확장이된다. 아래 예시 코드를 보자

```ruby
module MyModule
  def log
    "log by MyModule"
  end
end

class MyClass
  extend MyModule
end

irb > MyClass.log 
# => log by MyModule
irb > MyClass.ancestors 
# => [MyClass, Object, Kernel, BasicObject]
```

- 코드를 보면 ancestors 에 MyModule 이 없는것을 볼 수 있다.




## 공부하기 좋은 링크

- https://spilist.github.io/2019/01/17/ruby-mixin-concern

- https://medium.com/@leo_hetsch/ruby-modules-include-vs-prepend-vs-extend-f09837a5b073