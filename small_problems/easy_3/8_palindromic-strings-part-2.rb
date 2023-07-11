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

def real_palindrome?(message)
  message = message.downcase.delete('^a-z0-9')
  palindrome?(message)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
