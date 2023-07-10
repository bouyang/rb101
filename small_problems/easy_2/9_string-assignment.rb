name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This happens because the method #upcase! is a mutator and will mutate the string object name. save_name is referencing
# name and therefore it is also displayed in upcase.

# In this first case, when name is assigned to Alice, the name variable is set to reference a different String object and
# thus, save_name continues to reference the String object for Bob
