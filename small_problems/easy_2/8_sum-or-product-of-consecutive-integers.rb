puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to computer the sum, 'p' to compute the product."
ans = gets.chomp

result = nil
if ans == 's'
  result = 0
  for i in 1..num do
    result += i
  end
  puts "The sum of the integers between 1 and #{num} is #{result}."
else
  result = 1
  for i in 1..num do
    result *= i
  end
  puts "The product of the integers between 1 and #{num} is #{result}."
end

# Further exploration

sum = (1..num).inject(:+)
puts "The sum can also be calculated to be #{sum}"

product = (1..num).inject(:*)
puts "The product can also be calculated to be #{product}"
