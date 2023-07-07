def triangle(height)
  counter = 1
  loop do
    break if counter > height

    puts(' ' * (height - counter) + '*' * counter)
    counter += 1
  end
end

def uptriangle(height)
  counter = 0
  loop do
    break if counter > height

    puts('*' * (height - counter) + ' ' * counter)
    counter += 1
  end
end

triangle(5)
triangle(9)
puts ''

uptriangle(5)