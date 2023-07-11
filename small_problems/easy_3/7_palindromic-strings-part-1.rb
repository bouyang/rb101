def palindrome?(message)
  middle = message.length / 2
  index = 0
  loop do
    break if index == middle
    if message[index] != message[-(index + 1)]
      return false
    end

    index += 1
  end
  true
end

p palindrome?('maddam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
