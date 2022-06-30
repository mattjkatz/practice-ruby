# # example input = array of strings
# # expected output = smallest string

# # array of strings = ["dog", "to", "lizard"]

# # shortest string variable = array[0]          # 1 stv is "dog"
# # index                                        # 2 index is 0

# # while index < the length of the array        # 3  6   10
# #   string = array[index].split("")            # 4 string is ["d", "o", "g"] # 7 string ["t", "o"]  # 11 stv ["l", "i", "z", "a", "r", "d"]
# #   if string.length < (shortest string variable.split("")).length   # 5 false  # 8 true            # 12 false
# #     shortest string variable = string.join                                    # stv is "to"
# #   end
# #   index += 1                                 # 5 index = 1                    # 9 index = 2       # 13 index = 3
# # end

# # p shortest string variable                   # 14 stv is "to"

# array = ["dog", "to", "lizard"]

# index = 0
# shortest_string = array[0]

# while index < array.length
#   string = array[index].split("")
#   if string.length < shortest_string.split("").length
#     shortest_string = string.join
#   end
#   index += 1
# end

# p shortest_string

