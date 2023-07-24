# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]
# 1. Return an unnested (single layer) array of animals as strings
animal_strings = animals.map do |animal|
  animal.to_s
end

puts animal_strings
# 2. Return an unnested array of animals with length >= 4



#Part 2

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }