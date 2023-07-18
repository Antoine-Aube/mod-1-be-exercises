food_feelings = [{:pizza => "tasty"}, {:calzone => "also tasty"}]

# 1. what is food_feelings.count
count = food_feelings.count
p count 
# 2. what is food_feelings.first.count
first_count = food_feelings.first.count
puts first_count
# 3. how can I access the value "also tasty"
access_value = food_feelings[1][:calzone]
p access_value
# 4. how can I change the value “also tasty” to “super delicious”
change_value = food_feelings[1][:calzone] = "super delicious"
access_value = food_feelings[1][:calzone]
p access_value