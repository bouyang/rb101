def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# Further exploration

def power(num, n)
  result = num
  loop do
    if n == 0
      p result
      return result
    end
    result = multiply(result, num)
    n - 1
  end
end

p power(10, 2)
