a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Because integers are immutable, even though b is initialized separately from a, they will both point to the same object
