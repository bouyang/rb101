puts "What is the bill? "
bill = gets.chomp.to_f

puts "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = bill * (tip_percentage / 100)
total = bill + tip

puts format('The tip is $%0.2f', tip)
puts format('The total is $%0.2f', total)
