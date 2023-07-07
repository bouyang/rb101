def stringy(num)
  out_string = ''
  counter = 1
  loop do
    break if counter > num
    
    if counter.odd?
      out_string += '1'
    else
      out_string += '0'
    end
    counter += 1
  end
  return out_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
