require 'pry'

def hello(array)
  i = 0
  while i < array.length
    binding.pry
    a=yield(array[i])
    i += 1
  end
  a
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
