# Given the following array:

# animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]
# # 1. Return an unnested (single layer) array of animals as strings
# p animal_strings = animals.map { |animal| animal.to_s }


# # 2. Return an unnested array of animals with length >= 4

# p animals.find_all {|animal| animal.length >= 4}


#Part 2
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# 1. Return an unnested (single layer) array of animals as strings

p single_layer = nested_animals.flat_map {|array| array}.map {|animal| animal.to_s}

# 2. Return an unnested array of animals with length >= 4

p single_layer_four = nested_animals.flatten.find_all { |animal| animal.length >= 4 }

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animal_hash_1 = nested_animals.flatten.each_with_object({}) do |animal, hash|
  hash[animal] = animal.to_s.length
end

puts animal_hash_1

animal_hash = {}

animal_hash_2 = nested_animals.each do |group|
  group.each do |animal|
    animal_hash[animal] = animal.length
  end
end

p animal_hash

