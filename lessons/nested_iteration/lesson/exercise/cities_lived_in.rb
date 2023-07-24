cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

#solution to problem 1
p unique_cities = cities_lived_in.values.flatten.uniq

all_cities = []

cities_lived_in


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :Alex]
# or
# ["Michaela", "Mike", "Alex"]

#solution to problem 2

philidelphia_people = []

cities_lived_in.each do |person, cities_array|
    philidelphia_people << person.to_s.capitalize if cities_array.include?("Philadelphia")
end 

p philidelphia_people



# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

#solution 1
new_hash = Hash.new(0)
unique_cities = cities_lived_in.values.flatten

unique_cities.each do |city|
    new_hash[city] += 1 
end

p new_hash

#solution 2

cities_lived_in.each do |person, cities_array|
    cities_array.each do |city|
        new_hash[city] += 1
    end
end

p new_hash



# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
