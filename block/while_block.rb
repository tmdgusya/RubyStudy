def my_while(cond, &body)
    while cond.call
        body.call
    end
end

a = 0

my_while -> { a < 3 } do
    puts a
    a += 1
end