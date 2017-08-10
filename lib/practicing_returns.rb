# Why 'return' values matter

# There are many scenarios in which a program would iterate over a list of items,
# make some change to each item, and collect the resulting list of altered items.

# This is where controlling the return values of methods comes in. When a program is to iterate
# over a collection, execute some code using the members of that collection and return the changed # collection, the program needs a way to collect the changed items and tell the method to return the
# new and improved collection.

# The yield keyword can be used in a method to pass each successive element of a collection to a
# block of code. This program uses yield and captures the return value of the code block that will # call with such a method.

# Pry used for debugging purposes.
require 'pry'

# Method is built to operate in a similar manner the #collect method does.
# It iterates using a while loop, yielding each individual member of an array to a block and
# captures the return values of yielding those items to the block.
def hello(array)
  i = 0
  # The variable 'collection' is equal to an empty array.
  collection = []
  # Using the while loop to iterate over an array,
  # and yielding each member of the array in turn to a block.
  while i < array.length
    # This will push the return value of yield(array[i) into the 'collection' array
    # when in the while loop.
    collection << yield(array[i])
    i += 1
  end
  # Lastly, the updated 'collection' array needs to be returned.
  collection
end

# Although this will 'puts' the three names, no return value will be given (nil) due to while loops
# never having any return value unless specified. This is the purpose of returning the 'collection'
# array inside #hello.
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
