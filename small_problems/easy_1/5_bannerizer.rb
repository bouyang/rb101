def print_in_box(str)
  str_length = str.length
  
  horiz_border = '+-'
  str_length.times { horiz_border << '-' }
  horiz_border << '-+'

  vert_border = '| '
  str_length.times { vert_border << ' ' }
  vert_border << ' |'

  text_line = "| #{str} |"

  puts horiz_border
  puts vert_border
  puts text_line
  puts vert_border
  puts horiz_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
