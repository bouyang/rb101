age = rand(20..200)
puts "Teddy is #{age} years old!"

# Modification
puts "Please enter a name"
name = gets.chomp

if name == ''
  name = 'Teddy'
end

age2 = rand(20..200)

puts "#{name} is #{age2} years old!"
