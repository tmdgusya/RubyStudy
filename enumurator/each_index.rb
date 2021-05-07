result = []

"cat".each_char.with_index {|item, index| result << [item, index]}

p result

enum = "cat".enum_for(:each_char)
p "Enum : " + enum.to_a.to_s