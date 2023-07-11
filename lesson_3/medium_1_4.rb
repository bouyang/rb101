def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Yes, the first method returns the array that was originally passed in. That array will be mutated
# The second method creates a new array in the first line and that is the array that is returned, so the array that is
# passed in will not be mutated.
