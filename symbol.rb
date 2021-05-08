def walk(direction)
    if direction == :north
        puts "NORTH!!"
    end
end

puts walk(:north)

inst_section = {
  cello:  'string',
  clarinet:  'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}

puts inst_section[:oboe]

puts :abcd.object_id

puts "abcd" == "abcd"

# 우리가 심볼을 써야하는 이유 Ruby 는 계속 Object 를 생성함.
puts "abcd".object_id == "abcd".object_id

# Symbol 을 사용하는 이유
puts :abcd.object_id == :abcd.object_id

zzz = "abcd"

puts zzz.intern
