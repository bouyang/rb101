SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03

puts "Enter the length of the room in meters:"
length_m = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_m = gets.chomp.to_f

area_m = (length_m * width_m).round(2)
area_f = (area_m * 10.7639).round(2)

puts "The area of the room is #{area_m} square meters (#{area_f} square feet)."

# Modification

puts "Enter the length of the room in feet:"
length_f = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width_f = gets.chomp.to_f

area_f2 = (length_f * width_f).round(2)
area_i = (area_f2 * SQFEET_TO_SQINCHES).round(2)
area_cm = (area_f2 * SQFEET_TO_SQCM).round(2)

puts "The area of the room is #{area_f2} square feet (#{area_i} square inches, #{area_cm} square centimeters)."
