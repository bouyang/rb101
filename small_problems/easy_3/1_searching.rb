num_array = []

puts "==> Enter the 1st number:"
num = gets.chomp.to_i
num_array.push(num)

puts "==> Enter the 2nd number:"
num = gets.chomp.to_i
num_array.push(num)

puts "==> Enter the 3rd number:"
num = gets.chomp.to_i
num_array.push(num)

puts "==> Enter the 4th number:"
num = gets.chomp.to_i
num_array.push(num)

puts "==> Enter the 5th number:"
num = gets.chomp.to_i
num_array.push(num)

puts "==> Enter the last number:"
num = gets.chomp.to_i

if num_array.include?(num)
  puts "The number #{num} appears in #{num_array}"
else
  puts "The number #{num} does not appear in #{num_array}"
end
