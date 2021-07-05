require 'pry'

def hello(array)
  if block_given?
    i = 0
    stt=[]
    while i < array.length
      stt<<yield(array[i])
      i += 1
    end
    stt
  else
    array
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
