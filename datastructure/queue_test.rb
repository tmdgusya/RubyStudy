queue_array = []

queue_array.push 'roach'
queue_array.push 'code'
p queue_array.shift == 'roach'

queue_array.push 'roach'
queue_array.push 'dong'
queue_array.push 'noel'
queue_array.push 'sarry'

p queue_array.first(2)
p queue_array.last(2)