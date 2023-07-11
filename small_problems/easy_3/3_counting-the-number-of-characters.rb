puts "Please write word or multiple words:"
message = gets.chomp

message_chars = message.split(' ').join

puts "There are #{message_chars.length} characters in \"#{message}\"."
