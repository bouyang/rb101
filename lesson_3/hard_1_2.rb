greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# hi there because the reference to the value of a was initialized to informal_greeting and << mutates that string
