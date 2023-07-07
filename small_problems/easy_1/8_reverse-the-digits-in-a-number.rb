def reversed_number(num)
  num_rev = ''
  loop do
    break if (num == 0)

    num_rev += (num % 10).to_s
    num /= 10
  end
  num_rev = num_rev.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1