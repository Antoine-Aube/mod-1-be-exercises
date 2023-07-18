animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs

animals[:dogs]
# 2. add 3 parakeets
animals["parakeets"] = 3
# 3. increase the amount of cats by 2
animals["cats"] += 2
puts animals

pet_names = ["Fela", "Spot", "Patch", "Willy"]

# 1. add “Claude” to the end of the array
pet_names.append("Claude")
# 2. access the first name in the list
pet_names[0]
# 3. access the last name in the list
pet_names[-1]
# 4. remove “Fela” from the list
pet_names.shift[0]

puts pet_names