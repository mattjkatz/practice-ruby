# input = array
# output = 2 integers

array = [9, 5, 6, 8, 2]

smallest_integer = array[0]
second_smallest_integer = nil

i = 1

while i < array.length
if array[i] < smallest_integer
  second_smallest_integer = smallest_integer
  smallest_integer = array[i]
elsif array[i] < second_smallest_integer
  second_smallest_integer = array[i]
end
i += 1
end

p smallest_integer
p second_smallest_integer