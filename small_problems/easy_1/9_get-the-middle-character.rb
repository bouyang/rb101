def center_of(message)
  if message.length.odd?
    message[message.length / 2]
  else
    message[message.length / 2 - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
