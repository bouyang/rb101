100.times do |num|
  if num.odd?
    puts num
  end
end

# Modification

num = []
1.upto(100) do |i|
  if i.odd?
    num << i
  end
end
puts num
