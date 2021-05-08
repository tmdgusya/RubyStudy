module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id} : #{self.name})"
  end
end

# MixedIn 이 상속관계보다 더 높은 우선순위를 가짐!
class TestParent
  def who_am_i?
    "Parent Order!"
  end
end

class Phonograph < TestParent
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class EightTrack
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new("Roach Phonograph")
et = EightTrack.new("Roach EightTrack")

puts ph.who_am_i?
puts et.who_am_i?