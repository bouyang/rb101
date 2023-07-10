require 'date'

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
target_age = gets.chomp.to_i

current_year = Date.today.year

puts "It's #{current_year}. You will retire in #{current_year + (target_age - age)}."
puts "You have only #{target_age - age} years of work to go!"
