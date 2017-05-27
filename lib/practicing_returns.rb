require 'pry'

def hello(array)
  i = 0
  c = []
  while i < array.length
    c << yield(array[i])
    i += 1
  end
  c
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
