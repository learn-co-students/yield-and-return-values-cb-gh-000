require 'pry'
def hello(array)
  new_arr = []
  i = 0
  while i < array.length
    new_arr << yield(array[i])
    i += 1
  end
  return new_arr
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
