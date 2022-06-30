# input = [1, 2, 2, 5, 6, 1, 6, 8]
# output = [1, 2, 5, 6, 8]

# first make a function that takes in an array and prints it off
# create an sorted array for the numbers to be shoveled into
# create a while loop and an index, have it print off each number
# shovel each number into the sorted array inside of the loop
# after the loop, print off the sorted array (which now is full of numbers!)
# set numbers_are_same to be false
# create a new inner index and another while inside the other loop
# if array[index] is the same as the number in the sorted array then set numbers_are_same true
# if numbers_are_same false then shovel the array[index] into the sorted array

# def no_duplicates(array)

#   sorted_array = []
#   index = 0
#   while index < array.length
#     numbers_are_same = false
#     inner_index = 0
#     while inner_index < sorted_array.length
#       if array[index] == sorted_array[inner_index]
#         numbers_are_same = true
#       end
#       inner_index += 1
#     end
#     if numbers_are_same == false
#       sorted_array << array[index]
#     end
#     index += 1
#   end

#   p sorted_array

# end

# no_duplicates([1, 2, 2, 5, 6, 1, 6, 8])

# Write a function that takes in an array of numbers and returns a new array with the same numbers, with all the zeros moved to the end of the array.

# input = [1, 0, 5, 0, 7, 20192, 76]
# output = [1, 5, 7, 20192, 76, 0, 0]

# write a method that says hello
# write a function that takes in an array of numbers and print the array
# create an empty array for sorting
# create a each do loop and print out all of the numbers in the unsorted array
# if number is not equal to 0 then shovel it into sorted array
# if number is 0 then shovel it into a new array of 0s
# let the loop finish, and then create a new loop, to loop through the 0s array, and then shovel each 0 into the sorted array

def most_common_word(array)

  word_count = {}

  array.each do |word|
    if word_count.key?("#{word}")
      word_count["#{word}"] = word_count["#{word}"] + 1
    else
      word_count["#{word}"] = 1
    end
  end
  p word_count.max_by {|key,value| value}[0]
end

most_common_word(["dog", "cat", "dog", "bird", "lizard", "dog", "cat"])
